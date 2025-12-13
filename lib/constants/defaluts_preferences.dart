class DefalutsPreferences {
  static const AppLanguage language = AppLanguage.english;

  static const String exchange = "binance";
  static const String symbol = "BTC/USDT";

  static const AppTheme theme = AppTheme.system;
}

/// Supported languages
enum AppLanguage { english, spanish }

/// Supported themes
enum AppTheme { system, light, dark }

extension AppLanguageExtension on AppLanguage {
  String get name {
    switch (this) {
      case AppLanguage.english:
        return 'English';
      case AppLanguage.spanish:
        return 'Spanish';
    }
  }
}

extension AppThemeExtension on AppTheme {
  String get name {
    switch (this) {
      case AppTheme.system:
        return "System";
      case AppTheme.light:
        return "Light";
      case AppTheme.dark:
        return "Dart";
    }
  }
}
