import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../common/domain/providers/theme_provider.dart';

class AppScaffold extends StatelessWidget {
  final Widget child;

  const AppScaffold({required this.child, super.key});

 
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: _GlobalAppBar(),
      body: child,
    );
  }
}

class _GlobalAppBar extends ConsumerWidget implements PreferredSizeWidget {

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeNotifier = ref.read(themeProvider);
    final isDarkTheme = ref.watch(themeProvider).themeData.brightness == Brightness.dark;

    return AppBar(
      title: Text('Global AppBar'),
      actions: [
        IconButton(
          icon: Icon(isDarkTheme ? Icons.dark_mode : Icons.light_mode),
          onPressed: () {
            if (isDarkTheme) {
              themeNotifier.toggleLight();
            } else {
              themeNotifier.toggleDark();
            }
          },
        ),
      ],
    );
  }
}
