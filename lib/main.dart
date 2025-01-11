import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipe_flutter_app_test/providers/theme_provider.dart';
import 'package:recipe_flutter_app_test/router/app_router.dart';

void main() {
  runApp(ProviderScope(child: RecipeApp()));
}

class RecipeApp extends ConsumerWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final themeData = ref.watch(themeProvider).themeData;
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: themeData,  
      title: 'Recipes',
      routerConfig: appRouter,
    );
  }
}
