import 'package:dcex/features/search/providers/search_provider.dart';
import 'package:dcex/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchScreen extends ConsumerWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pairs = ref.watch(pairsSeachProvider);
    return Scaffold(
      appBar: AppBar(title: Text("Search")),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              ref.read(pairSearchTextProvider.notifier).updateText(value);
            },
          ),

          Expanded(
            child: pairs.when(
              data: (data) {
                return ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Text(data[index].pair),
                      onTap: () {
                        PairDetailRouter(symbol: '').push(context);
                      },
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider(height: 1, thickness: 1);
                  },
                  itemCount: data.length,
                );
              },
              error: (Object error, StackTrace stackTrace) {
                return Center(child: Text(error.toString()));
              },
              loading: () {
                return CircularProgressIndicator();
              },
            ),
          ),
        ],
      ),
    );
  }
}
