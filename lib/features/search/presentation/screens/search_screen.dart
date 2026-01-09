import 'package:dcex/features/search/providers/search_provider.dart';
import 'package:dcex/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchScreen extends HookConsumerWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();

    useEffect(() {
      return () {
        controller.dispose();
      };
    }, const []);

    final pairs = ref.watch(pairsSeachProvider);
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: controller,
          onChanged: (value) {
            ref.read(pairSearchTextProvider.notifier).updateText(value);
          },
          decoration: InputDecoration(
            hintText: 'Please input symbol',
            prefixIcon: const Icon(Icons.search),
            suffixIcon: controller.text.isNotEmpty
                ? IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      controller.clear();
                      ref.read(pairSearchTextProvider.notifier).clear();
                      FocusScope.of(context).unfocus();
                    },
                  )
                : null,
            border: const OutlineInputBorder(),
            prefixIconConstraints: const BoxConstraints(
              minWidth: 40,
              minHeight: 40,
            ),
            suffixIconConstraints: const BoxConstraints(
              minWidth: 40,
              minHeight: 40,
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 10),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: pairs.when(
              data: (data) {
                return ListView.separated(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  itemBuilder: (BuildContext context, int index) {
                    final symbol = data[index].pair;
                    return ListTile(
                      leading: Text(symbol),
                      onTap: () {
                        FocusScope.of(context).unfocus();
                        PairDetailRouter(symbol: symbol).push(context);
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
