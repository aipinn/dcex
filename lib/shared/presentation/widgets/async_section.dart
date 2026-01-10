import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AsyncSection<T> extends StatelessWidget {
  final AsyncValue<T> value;
  final Widget Function(T data) builder;
  const AsyncSection({super.key, required this.value, required this.builder});

  @override
  Widget build(BuildContext context) {
    return value.when(
      data: builder,
      error: (Object error, _) => Center(child: Text(error.toString())),
      loading: () => Center(child: CircularProgressIndicator()),
    );
  }
}
