import 'package:flutter/material.dart';

class SettingsSection {
  final List<SettingsTileData> items;
  final String title;
  SettingsSection({required this.items, required this.title});
}

class SettingsTileData {
  final String title;
  final String subtitle;
  final Icon icon;
  final Function() onTap;
  final SettingsTileType type;

  const SettingsTileData({
    required this.type,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  });
}

enum SettingsTileType { language, exchange, pair, theme }
