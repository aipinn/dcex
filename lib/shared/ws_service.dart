import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:dcex/constants/app_constants.dart';
import 'package:dcex/shared/utils/logger.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

abstract class WsTransport {
  Stream<String> get stream;
  void send(String data);
  Future<void> connect();
  Future<void> close();
}

/// Platforms supported: native only (no web)
class IoWebSocketTransport implements WsTransport {
  final String endpoint;
  late WebSocket _socket;

  IoWebSocketTransport({required this.endpoint});

  @override
  Future<void> connect() async {
    final uri = Uri.parse(
      AppConstants.baseWsUrl + endpoint,
    ); // endpoint = "/api/ws/ticker?exchange=bingx"
    logInfo('ws connect: $uri');
    _socket = await WebSocket.connect(uri.toString());
  }

  @override
  Future<void> close() {
    return _socket.close();
  }

  @override
  void send(String data) {
    _socket.add(data);
  }

  @override
  Stream<String> get stream => _socket.cast<String>();
}

/// Platforms supported: web, mobile, desktop
class ChannelWebSocketTransport implements WsTransport {
  final String endpoint;
  late final WebSocketChannel _channel;

  ChannelWebSocketTransport({required this.endpoint});

  @override
  Future<void> connect() async {
    final uri = Uri.parse(AppConstants.baseWsUrl).replace(path: endpoint);
    _channel = WebSocketChannel.connect(uri);
  }

  @override
  Stream<String> get stream => _channel.stream.cast<String>();

  @override
  void send(String data) => _channel.sink.add(data);

  @override
  Future<void> close() async => _channel.sink.close();
}

class WsService {
  final WsTransport _transport;
  WsService(this._transport);

  final _controller = StreamController<Map<String, dynamic>>.broadcast();
  Stream<Map<String, dynamic>> get stream => _controller.stream;

  Timer? _pingTimer;
  Timer? _pongTimeoutTimer;

  static const _pingInterval = Duration(seconds: 10);
  static const _pongInterval = Duration(seconds: 5);

  bool _manuallyClosed = false;
  bool _reconnecting = false;
  int _retryCount = 0;

  Future<void> connect() async {
    _manuallyClosed = false;
    await _internalConnect();
  }

  Future<void> _internalConnect() async {
    await _transport.connect();
    // Start heartbeat ping/pong
    _startHeartbeat();

    // Listen websocket stream
    _transport.stream.listen(
      _handleData,
      onDone: _handleDone,
      onError: _handleError,
      cancelOnError: false,
    );
  }

  void _scheduleReconnect() {
    if (_reconnecting) return;
    _reconnecting = true;

    _retryCount++;
    final delay = Duration(seconds: _retryCount.clamp(1, 5));
    logInfo('ws reconnecting in ${delay.inSeconds}s');

    Future.delayed(delay, () async {
      if (_manuallyClosed) return;
      try {
        await _internalConnect();
        _retryCount = 0;
      } catch (e) {
        _reconnecting = false;
        _scheduleReconnect();
      }
      _reconnecting = false;
    });
  }

  /// Send message to websocket server
  void send(Map<String, dynamic> msg) {
    _transport.send(jsonEncode(msg));
  }

  /// Close websocket connection and stop heartbeat ping/pong
  Future<void> close() async {
    _manuallyClosed = true;
    _stopHeartbeat();
    await _transport.close();
    await _controller.close();
  }

  /// Delivering message to Business Logic
  void _handleData(String data) {
    final msg = jsonDecode(data);
    if (msg['action'] == 'pong') {
      _pongTimeoutTimer?.cancel();
      return;
    }

    _controller.add(msg);
  }

  /// Handle websocket done event
  void _handleDone() {
    _stopHeartbeat();

    if (_manuallyClosed) return;
    _scheduleReconnect();
  }

  /// Handle websocket error event
  void _handleError(Object error) {
    logError('ws websocket error: $error');
    _stopHeartbeat();

    if (_manuallyClosed) return;
    _scheduleReconnect();
  }

  /// Start headtbeat ping/pong
  void _startHeartbeat() {
    _pingTimer?.cancel();
    _pingTimer = Timer.periodic(_pingInterval, (timer) {
      send({'action': 'ping'});

      // Waiting for pong response
      _pongTimeoutTimer?.cancel();
      _pongTimeoutTimer = Timer(_pongInterval, () {
        logWarning('ws pong timeout, try to reconnect.');
        _handleHeartbeatTimeout();
      });
    });
  }

  /// Stop heartbeat ping/pong
  void _stopHeartbeat() {
    _pingTimer?.cancel();
    _pingTimer = null;
    _pongTimeoutTimer?.cancel();
    _pongTimeoutTimer = null;
  }

  /// Heartbeat timeout dectected: force closing connecting to trigger reconnection
  void _handleHeartbeatTimeout() {
    _manuallyClosed = true;
    // Proactively close connect
    _transport.close();
  }
}
