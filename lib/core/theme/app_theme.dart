import 'package:flutter/material.dart';

class AppTheme {
  // ==================== 公共核心颜色  ====================
  static const Color primaryGreen = Color(0xFF0ECB81); // 上涨 / Buy / Long（绿）
  static const Color primaryGreenDark = Color(0xFF006D4F); // Dark 模式强调容器用

  static const Color accentRed = Color(0xFFF6465D); // 下跌 / Sell / Short
  static const Color accentRedDark = Color(0xFF8B2F24);

  static const Color brandYellow = Color(0xFFFCD535); //品牌金黄（通知、关注、限价等）
  static const Color brandYellowDark = Color(0xFFB38F12);

  static const Color textPrimaryLight = Color(0xFF0F1115); // 深黑灰（Light 主文字）
  static const Color textPrimaryDark = Color(0xFFEDEDED); // 浅灰白（Dark 主文字，护眼）

  static const Color textSecondaryLight = Color(0xFF6B7280);
  static const Color textSecondaryDark = Color(0xFF9CA3AF);

  static const Color borderLight = Color(0xFFE5E7EB);
  static const Color borderDark = Color(0xFF374151); // 中灰分隔线

  static const Color dividerLight = Color(0xFFE5E7EB);
  static const Color dividerDark = Color(0xFF2D3748);

  static const Color surfaceLight = Color(0xFFFFFFFF); // 卡片/表面
  static const Color surfaceDark = Color(0xFF11151C); // Dark 卡片层

  static const Color backgroundLight = Color(0xFFF8FAFC); // 最底层背景
  static const Color backgroundDark = Color(0xFF0B0E11);

  // ==================== Light Theme ====================

  static ThemeData light() => ThemeData.light().copyWith(
    extensions: [
      TradeColors(buy: AppTheme.primaryGreen, sell: AppTheme.accentRed),
    ],
    brightness: Brightness.light,
    scaffoldBackgroundColor: backgroundLight,
    primaryColor: primaryGreen,
    colorScheme: ColorScheme.light(
      primary: primaryGreen,
      onPrimary: Colors.white,
      secondary: primaryGreen.withValues(alpha: 0.8),
      onSecondary: Colors.white,
      surface: surfaceLight,
      onSurface: textPrimaryLight,
      surfaceContainerHighest: const Color(0xFFF1F5F9),
      onSurfaceVariant: textSecondaryLight,
      error: accentRed,
      onError: Colors.white,
      outline: borderLight,
      tertiary: brandYellow, // 用于 accent/highlight
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: surfaceLight,
      foregroundColor: textPrimaryLight,
      elevation: 0,
      shadowColor: Colors.transparent,
    ),
    cardTheme: CardThemeData(
      color: surfaceLight,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: borderLight),
      ),
    ),
    dividerColor: dividerLight,
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: textPrimaryLight),
      bodyMedium: TextStyle(color: textPrimaryLight),
      bodySmall: TextStyle(color: textSecondaryLight),
      titleMedium: TextStyle(
        color: textPrimaryLight,
        fontWeight: FontWeight.w600,
      ),
      labelLarge: TextStyle(color: textPrimaryLight), // button text 等
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryGreen,
        foregroundColor: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: primaryGreen,
        side: const BorderSide(color: primaryGreen),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primaryGreen),
    ),
  );

  // ==================== Dark Theme ====================
  static ThemeData dark() => ThemeData.dark().copyWith(
    extensions: [
      TradeColors(buy: AppTheme.primaryGreen, sell: AppTheme.accentRed),
    ],
    brightness: Brightness.dark,
    scaffoldBackgroundColor: backgroundDark,
    primaryColor: primaryGreen,
    colorScheme: ColorScheme.dark(
      primary: primaryGreen,
      onPrimary: const Color(0xFF00140A), // 深绿底白字
      secondary: primaryGreen.withValues(alpha: 0.85),
      onSecondary: const Color(0xFF00140A),
      surface: surfaceDark,
      onSurface: textPrimaryDark,
      surfaceContainerHighest: const Color(0xFF1E2329), // 暗
      onSurfaceVariant: textSecondaryDark,
      error: accentRed,
      onError: Colors.white,
      outline: borderDark,
      tertiary: brandYellow,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF0F1117),
      foregroundColor: textPrimaryDark,
      elevation: 0,
      shadowColor: Colors.transparent,
    ),
    cardTheme: CardThemeData(
      color: surfaceDark,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: borderDark),
      ),
    ),
    dividerColor: dividerDark,
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: textPrimaryDark),
      bodyMedium: TextStyle(color: textPrimaryDark),
      bodySmall: TextStyle(color: textSecondaryDark),
      titleMedium: TextStyle(
        color: textPrimaryDark,
        fontWeight: FontWeight.w600,
      ),
      labelLarge: TextStyle(color: textPrimaryDark),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryGreen,
        foregroundColor: const Color(0xFF00140A),
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: primaryGreen,
        side: const BorderSide(color: primaryGreen),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primaryGreen),
    ),
  );
}

@immutable
class TradeColors extends ThemeExtension<TradeColors> {
  final Color buy;
  final Color sell;

  const TradeColors({required this.buy, required this.sell});

  @override
  TradeColors copyWith({Color? buy, Color? sell}) {
    return TradeColors(buy: buy ?? this.buy, sell: sell ?? this.sell);
  }

  @override
  TradeColors lerp(ThemeExtension<TradeColors>? other, double t) {
    if (other is! TradeColors) return this;
    return TradeColors(
      buy: Color.lerp(buy, other.buy, t)!,
      sell: Color.lerp(sell, other.sell, t)!,
    );
  }
}
