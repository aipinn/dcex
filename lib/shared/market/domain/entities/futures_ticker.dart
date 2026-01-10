// domain/entities/futures_ticker.dart
import 'package:dcex/shared/market/domain/entities/market_category.dart';
import 'package:dcex/shared/market/domain/entities/ticker.dart';

abstract class FuturesTickerEntity implements TickerEntity {
  @override
  String get symbol;

  @override
  MarketCategory get category;

  @override
  double get last;

  @override
  double get open;

  @override
  double get high;

  @override
  double get low;

  @override
  double get bid;

  @override
  double get ask;

  @override
  double get change;

  @override
  double get percentage;

  @override
  double get baseVolume;

  @override
  double get quoteVolume;

  @override
  int get timestamp;

  @override
  double? get vwap;

  @override
  Map<String, dynamic>? get info;

  // ── 衍生品核心字段（全部改为 abstract getter，可空） ──
  double? get markPrice; // 标记价格
  double? get indexPrice; // 指数价格
  double? get fundingRate; // 当前资金费率
  int? get nextFundingTime; // 下次资金费结算时间
  double? get estimatedSettlePrice; // 预计结算价
  double? get openInterest; // 未平仓合约量
  double? get openInterestAmount;
  double? get impliedFundingRate; // 预测资金费率

  int get getNextFundingTime;
  double get getFundingRate;
}
