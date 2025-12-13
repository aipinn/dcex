import 'package:flutter/material.dart';

enum PriceChangeDirection { up, down, flat }

PriceChangeDirection resolveDirection({required double absolute}) {
  if (absolute > 0) return PriceChangeDirection.up;
  if (absolute < 0) return PriceChangeDirection.down;
  return PriceChangeDirection.flat;
}

class MarketTrendColor {
  final Color up;
  final Color down;
  final Color flat;

  const MarketTrendColor({
    required this.up,
    required this.down,
    this.flat = Colors.grey,
  });
}

/// 系统预设（只是默认值）
class MarketTrendPresets {
  /// 红涨绿跌
  static const redUp = MarketTrendColor(
    up: Color(0xFFE53935),
    down: Color(0xFF43A047),
  );

  /// 绿涨红跌
  static const greenUp = MarketTrendColor(
    up: Color(0xFF43A047),
    down: Color(0xFFE53935),
  );
}

class MarketTrendPalette {
  final MarketTrendColor color;

  const MarketTrendPalette(this.color);

  Color text(PriceChangeDirection direction) {
    return _resolve(direction);
  }

  Color background(PriceChangeDirection direction) {
    return _resolve(direction).withValues(alpha: 0.12);
  }

  Color border(PriceChangeDirection direction) {
    return _resolve(direction);
  }

  Color _resolve(PriceChangeDirection direction) {
    switch (direction) {
      case PriceChangeDirection.up:
        return color.up;
      case PriceChangeDirection.down:
        return color.down;
      case PriceChangeDirection.flat:
        return color.flat;
    }
  }
}

class TrendColors {
  static const Color up = Color(0xFF43A047); // 绿涨
  static const Color down = Color(0xFFE53935); // 红跌
  static const Color flat = Colors.grey;
}

extension NumTrendColor on num {
  Color get trendColor {
    if (this > 0) return TrendColors.up;
    if (this < 0) return TrendColors.down;
    return TrendColors.flat;
  }
}

extension StringTrendColor on String {
  Color get trendColor {
    final value = double.tryParse(this);
    if (value == null) return TrendColors.flat;
    if (value > 0) return TrendColors.up;
    if (value < 0) return TrendColors.down;
    return TrendColors.flat;
  }
}
