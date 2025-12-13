import 'package:dcex/features/details/data/models/markets/pair/pair.dart';
import 'package:dcex/features/home/providers/home_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_provider.g.dart';

@Riverpod(keepAlive: true)
class PairSearchText extends _$PairSearchText {
  @override
  String build() => '';

  void updateText(String text) {
    state = text;
  }

  void clear() {
    state = '';
  }
}

@riverpod
Future<List<Pair>> pairsSeach(Ref ref) async {
  final pairsAsync = ref.watch(pairsProvider);
  final searchText = ref.watch(pairSearchTextProvider).toLowerCase();
  List<Pair> list = [];
  final List<Pair> pairs = pairsAsync.maybeWhen(
    data: (data) => data,
    orElse: () => [],
  );

  list = pairs
      .where((element) => element.pair.toLowerCase().contains(searchText))
      .toList();
  return list;
}
