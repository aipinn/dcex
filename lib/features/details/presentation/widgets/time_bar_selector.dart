import 'package:collection/collection.dart';
import 'package:dcex/features/details/providers/time_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TimeBarSelectorWidget extends ConsumerWidget {
  const TimeBarSelectorWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: timeList.mapIndexed((index, element) {
          return InkWell(
            onTap: () {
              ref.read(timeDataProvider.notifier).state = element;
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              decoration: BoxDecoration(color: Colors.black12),
              child: Center(child: Text(element.name)),
            ),
          );
        }).toList(),
      ),
    );
  }
}
