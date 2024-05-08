import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_all/presentation/providers/counter_provider.dart';
import 'package:widget_all/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int counter = ref.watch(counterProvider);
    final bool theme = ref.watch(themeProviderLigth);
    

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(themeProviderLigth.notifier).update((state) => !state);
            },
            icon: Icon(theme ? Icons.light_mode : Icons.dark_mode),
          )
        ],
      ),
      body: Center(
        child: Text("Numero $counter"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ref.read(counterProvider.notifier).state++;  // pq es un entero si fuera string sería como el sgt ejemplo
          ref.read(counterProvider.notifier).update((state) => state + 5);
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
