import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_all/config/router/app_router.dart';
import 'package:widget_all/presentation/providers/theme_provider.dart';
import 'package:widget_all/styles/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final thema = ref.watch(themeProviderLigth);

    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(colorThema: thema).getTheme(),
    );
  }
}
