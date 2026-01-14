import 'package:dcex/shared/ws_ticker_manager.dart';
import 'package:dcex/shared/utils/logger.dart';
import 'package:dcex/shared/ws_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final wsTickerManagerProvider = FutureProvider<WsTickerManager>((ref) async {
  final wsService = await ref.watch(wsServiceStreamProvider.future);
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
