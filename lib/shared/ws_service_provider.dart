// import 'package:dcex/constants/api_const.dart';
// import 'package:dcex/shared/ws_service.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// final wsServiceProvider = FutureProvider<WsService>((ref) async {
//   final service = WsService(IoWebSocketTransport(endpoint: WsEndpoint.ticker));
//   await service.connect();
//   return service;
// });

import 'dart:async';
import 'package:dcex/shared/network/api_const.dart';
import 'package:dcex/features/settings/providers/settings_provider.dart';
import 'package:dcex/shared/ws_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dcex/shared/utils/logger.dart';

/// StreamNotifierProvider 管理 WebSocket
/// 自动根据 settingsProvider 的交易所变化切换
final wsServiceStreamProvider =
    StreamNotifierProvider<WsServiceNotifier, WsService?>(
      WsServiceNotifier.new,
    );

class WsServiceNotifier extends StreamNotifier<WsService?> {
  WsService? _service;
  String? _currentExchange;

  @override
  Stream<WsService?> build() async* {
    // selector：只监听 favoriteExchange
    final exchange = await ref.watch(
      settingsProvider.selectAsync((s) => s.favoriteExchange),
    );

    // 交易所未变化，直接复用
    if (_currentExchange == exchange && _service != null) {
      yield _service;
      return;
    }

    // 关闭旧连接
    if (_service != null) {
      await _service!.close();
      _service = null;
    }

    // 创建新服务
    final service = WsService(
      IoWebSocketTransport(endpoint: WsEndpoint.ticker.endpointPath(exchange)),
    );

    try {
      await service.connect();
      _service = service;
      _currentExchange = exchange;
      logInfo('WebSocket connected to $exchange');
      yield _service;
    } catch (e) {
      logError('WebSocket connect failed: $e');
      yield null;
    }

    // provider dispose 时自动关闭
    ref.onDispose(() async {
      await _service?.close();
      _service = null;
      _currentExchange = null;
    });
  }

  /// 可选：手动切换交易所（非主路径）
  Future<void> switchExchange(String exchange) async {
    if (_currentExchange == exchange && _service != null) return;

    await _service?.close();

    final service = WsService(
      IoWebSocketTransport(endpoint: WsEndpoint.ticker.endpointPath(exchange)),
    );

    try {
      await service.connect();
      _service = service;
      _currentExchange = exchange;
      update((_) => _service);
    } catch (e) {
      logError('WebSocket connect failed: $e');
      update((_) => null);
    }
  }
}
