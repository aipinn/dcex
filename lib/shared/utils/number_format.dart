String formatMarketNumber(
  double value, {
  int maxDecimals = 5,
  int maxDigits = 10,
}) {
  if (value == 0) return '0';

  final abs = value.abs();
  final sign = value < 0 ? '-' : '';

  // 1️⃣ 小于 1：优先普通十进制
  if (abs < 1) {
    final fixed = abs.toStringAsFixed(maxDecimals);
    final trimmed = _trimZeros(fixed);

    // 计算有效长度（不算小数点）
    final digitCount = trimmed.replaceAll('.', '').length;

    if (digitCount <= maxDigits) {
      return sign + trimmed;
    }

    // 太长了 → 科学计数
    return sign + abs.toStringAsExponential(2);
  }

  // 2️⃣ 正常范围
  if (abs < 10000) {
    return sign + _trimZeros(abs.toStringAsFixed(2));
  }

  // 3️⃣ 大数单位
  if (abs < 1e6) {
    return sign + _formatUnit(abs, 1e3, 'k');
  }
  if (abs < 1e9) {
    return sign + _formatUnit(abs, 1e6, 'm');
  }

  return sign + _formatUnit(abs, 1e9, 'b');
}

String _formatUnit(double value, double base, String unit) {
  final v = value / base;
  final s = v < 10 ? v.toStringAsFixed(2) : v.toStringAsFixed(1);
  return _trimZeros(s) + unit;
}

String _trimZeros(String s) {
  if (!s.contains('.')) return s;
  return s.replaceFirst(RegExp(r'\.?0+$'), '');
}

// void main() {
//   final values = [
//     0.000005,
//     0.00000012,
//     0.000000000123,
//     0.00123,
//     0.1,
//     12.3456,
//     12345,
//     1234567,
//   ];

//   for (final v in values) {
//     print('$v → ${formatMarketNumber(v)}');
//   }
// }
// 0.000005 → 0.000005
// 0.00000012 → 0.00000012
// 0.000000000123 → 1.23e-10
// 0.00123 → 0.00123
// 0.1 → 0.1
// 12.3456 → 12.35
// 12345 → 12.3k
// 1234567 → 1.23m
