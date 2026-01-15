import 'package:dcex/core/result.dart';
import 'package:dcex/features/details/data/models/graph/graph/graph.dart';
import 'package:dcex/features/details/data/models/markets/pair/pair.dart';
import 'package:dcex/features/details/data/models/orderbook/orderbook/order_book.dart';
import 'package:dcex/features/details/data/models/orderbook/orderbook_response/orderbook_response.dart';
import 'package:dcex/features/details/data/models/trades/trade/trade.dart';
import 'package:dcex/features/details/data/repositories/details_repository_impl.dart';
import 'package:dcex/features/details/providers/time_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'details_provider.g.dart';

final graphDataProvider = FutureProvider.family<Graph, Pair>((ref, pair) async {
  String interval = ref.watch(timeDataProvider).periods;
  String fromHours = ref.watch(timeDataProvider).before;
  String before = '';
  if (fromHours.isNotEmpty) {
    before =
        (DateTime.now()
                .subtract(Duration(hours: int.parse(fromHours)))
                .toUtc()
                .millisecondsSinceEpoch)
            .toString();
  }
  final graph = await ref
      .read(detailsRepositoryProvider)
      .getPairGraph(pair.exchange, pair.pair, period: interval, before: before);
  return graph;
});

/// Use codegen
@riverpod
class PairOrderBook extends _$PairOrderBook {
  @override
  Future<OrderBook> build(Pair pair) async {
    final result = await ref
        .read(detailsRepositoryProvider)
        .getOrderBook(pair.exchange, pair.pair);

    return result.when(
      success: (OrderBook value) {
        return value;
      },
      failure: (String message, Object? error) {
        throw error!;
      },
    );
  }
}

@riverpod
class TradesList extends _$TradesList {
  @override
  FutureOr<List<Trade>> build(Pair pair) async {
    final trades = await ref
        .read(detailsRepositoryProvider)
        .getTrades(pair.exchange, pair.pair);
    return trades;
  }
}
