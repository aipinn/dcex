abstract class ContractTicker {
  String get symbol;
  String get exchange;
  double? get last; // 最新价
  double? get low; // 24h最低价
  double? get high; // 24h最高价
  double? get open; // 24h开盘价
  double? get change; // 涨跌幅（百分比）
  double? get volume24h; // 24h成交量（基础币）
  int? get timestamp;
  double? get fundingRate; // 资金费率
  int? get nextFundingTime; // 下次资金费时间
}

/*
{
	'symbol': 'BTC/USD:BTC',
	'timestamp': 1768096570535,
	'datetime': '2026-01-11T01:56:10.535Z',
	'high': 90699.9,
	'low': 90251.0,
	'bid': 90472.0,
	'bidVolume': 5305.0,
	'ask': 90472.1,
	'askVolume': 1740.0,
	'vwap': 1.1052826428135e-05,
	'open': 90539.2,
	'close': 90468.8,
	'last': 90468.8,
	'previousClose': None,
	'change': -70.4,
	'percentage': -0.0777,
	'average': 90504.0,
	'baseVolume': 36705851.0,
	'quoteVolume': 405.7034,
	'markPrice': 90473.87,
	'indexPrice': 90498.03,
	'info': {
		'symbol': 'BTCUSD',
		'tickDirection': 'ZeroPlusTick',
		'price24hPcnt': '-0.000777',
		'lastPrice': '90468.80',
		'prevPrice24h': '90539.20',
		'highPrice24h': '90699.90',
		'lowPrice24h': '90251.00',
		'prevPrice1h': '90493.30',
		'markPrice': '90473.87',
		'indexPrice': '90498.03',
		'openInterest': '707606004',
		'openInterestValue': '7821.11',
		'turnover24h': '405.7034',
		'volume24h': '36705851.0000',
		'fundingIntervalHour': '8',
		'fundingCap': '0.005',
		'nextFundingTime': '1768118400000',
		'fundingRate': '0.0001',
		'bid1Price': '90472.00',
		'bid1Size': '5305',
		'ask1Price': '90472.10',
		'ask1Size': '1740',
		'preOpenPrice': '',
		'preQty': '',
		'curPreListingPhase': ''
	}
}
*/
