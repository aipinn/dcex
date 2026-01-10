import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'app_theme_provider.g.dart';

@riverpod
class ThemeProvider extends _$ThemeProvider {
  @override
  build() {
    return ThemeMode.system;
  }

  void change(ThemeMode mode) {
    state = mode;
  }
}
