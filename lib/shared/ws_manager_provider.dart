import 'package:dcex/shared/network/api_const.dart';
import 'package:dcex/shared/ws_orderbook_manager.dart';
import 'package:dcex/shared/ws_ticker_manager.dart';
import 'package:dcex/shared/utils/logger.dart';
import 'package:dcex/shared/ws_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ws_manager_provider.g.dart';

final wsTickerManagerProvider = FutureProvider<WsTickerManager>((ref) async {
  final wsService = await ref.watch(
    wsServiceStreamProvider(WsEndpoint.ticker).future,
  );

  final manager = WsTickerManager(wsService!);
  ref.onDispose(() {
    // manager.dispose();
    logInfo('💓 pair summary manager dispose');
  });
  ref.onCancel(() {
    logInfo('💓 pair summary manager cancel');
  });
  ref.onResume(() {
    logInfo('💓 pair summary manager resume');
  });

  return manager;
});

@riverpod
Future<WsOrderbookManager> wsOrderbookManager(Ref ref) async {
  final wsService = await ref.watch(
    wsServiceStreamProvider(WsEndpoint.orderbook).future,
  );

  final manager = WsOrderbookManager(wsService!);
  return manager;
}
