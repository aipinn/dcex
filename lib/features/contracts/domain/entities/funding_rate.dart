abstract class FundingRate {
  String get symbol;
  String get exchange;
  double? get fundingRate; // 当前资金费率
  int? get nextFundingTime; // 下次结算时间
}
