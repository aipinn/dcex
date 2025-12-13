import 'package:dcex/features/settings/data/models/settings_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentProvider = Provider<SettingsTileData>((ref) {
  throw UnimplementedError();
});

class SettingTile extends ConsumerWidget {
  const SettingTile({
    super.key,
    this.showBottomLine = false,
    required this.onTap,
  });
  final bool showBottomLine;
  final Function() onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(currentProvider);
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Row(
              children: [
                SizedBox(width: 32, height: 32, child: data.icon),
                SizedBox(width: 8),
                Expanded(
                  child: Text(data.title, style: const TextStyle(fontSize: 16)),
                ),
                Text(data.subtitle, style: const TextStyle(fontSize: 16)),
              ],
            ),
          ),

          // Divider(height: 1, thickness: 1, indent: 44, color: Colors.black12),
          if (showBottomLine)
            Padding(
              padding: EdgeInsets.only(left: 44),
              child: Container(
                height: 1,
                color: const Color.fromARGB(255, 222, 220, 220),
              ),
            ),
        ],
      ),
    );
  }
}
