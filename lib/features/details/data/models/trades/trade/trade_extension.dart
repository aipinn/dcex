import 'dart:ui';

import 'package:dcex/features/details/data/models/trades/trade/trade.dart';

enum TradeSide { buy, sell, unknown }

extension TradeSideX on Trade {
  TradeSide get tradeSide {
    switch (side.toLowerCase()) {
      case 'buy':
        return TradeSide.buy;
      case 'sell':
        return TradeSide.sell;
      default:
        return TradeSide.unknown;
    }
  }
}
