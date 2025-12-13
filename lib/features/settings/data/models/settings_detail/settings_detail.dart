import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_detail.freezed.dart';

@freezed
abstract class SettingsDetail with _$SettingsDetail {
  const factory SettingsDetail({
    required String currentLanguage,
    required String favoriteExchange,
    required String favoritePair,
    required String themeMode,
  }) = _SettingsDetail;
}
