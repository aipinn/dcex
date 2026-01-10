abstract class ContractMarket {
  String get symbol;
  String get base;
  String get quote;
  bool get linear; // 是否 U 本位 (USDT-Margined)
  bool get inverse; // 是否币本位 (Coin-Margined)
  double? get maxLeverage; // 最大杠杆倍数
  double? get minLeverage; // 最小杠杆倍数
  String get exchange;
  double? get fundingRate; // 资金费率
  int? get nextFundingTime; // 下次资金费时间
  String? get contractType; // Perpetual等
}

extension ContractMarketX on ContractMarket {
  /// 交易对
  String get pair => '$base/$quote';
}

/**
 {
	'id': 'BTC-USDT',
	'lowercaseId': None,
	'symbol': 'BTC/USDT:USDT',
	'base': 'BTC',
	'quote': 'USDT',
	'settle': 'USDT',
	'baseId': 'BTC',
	'quoteId': 'USDT',
	'settleId': 'USDT',
	'type': 'swap',
	'spot': False,
	'margin': False,
	'swap': True,
	'future': False,
	'option': False,
	'index': None,
	'active': True,
	'contract': True,
	'linear': True,
	'inverse': False,
	'subType': 'linear',
	'taker': 0.0005,
	'maker': 0.0002,
	'contractSize': 1.0,
	'expiry': None,
	'expiryDatetime': None,
	'strike': None,
	'optionType': None,
	'precision': {
		'amount': 0.0001,
		'price': 0.1,
		'cost': None,
		'base': None,
		'quote': None
	},
	'limits': {
		'leverage': {
			'min': None,
			'max': None
		},
		'amount': {
			'min': 0.0001,
			'max': None
		},
		'price': {
			'min': None,
			'max': None
		},
		'cost': {
			'min': 2.0,
			'max': None
		}
	},
	'marginModes': {
		'cross': None,
		'isolated': None
	},
	'created': None,
	'info': {
		'contractId': '100',
		'symbol': 'BTC-USDT',
		'size': '0.0001',
		'quantityPrecision': '4',
		'pricePrecision': '1',
		'feeRate': '0.0005',
		'makerFeeRate': '0.0002',
		'takerFeeRate': '0.0005',
		'tradeMinLimit': '0',
		'tradeMinQuantity': '0.0001',
		'tradeMinUSDT': '2',
		'currency': 'USDT',
		'asset': 'BTC',
		'status': '1',
		'apiStateOpen': 'true',
		'apiStateClose': 'true',
		'ensureTrigger': True,
		'triggerFeeRate': '0.00050000',
		'brokerState': False,
		'launchTime': '1586275200000',
		'maintainTime': '0',
		'offTime': '0',
		'displayName': 'BTC-USDT'
	},
	'tierBased': None,
	'percentage': None,
	'feeSide': 'quote'
}
*/
