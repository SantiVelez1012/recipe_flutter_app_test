import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/theme_provider.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeNotifier = ref.read(themeProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe Saver'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: themeNotifier.toggleDark,
              child: const Text('Set Dark Theme'),
            ),
            ElevatedButton(
              onPressed: themeNotifier.toggleLight,
              child: const Text('Set Light Theme'),
            ),
          ],
        ),
      ),
    );
  }
}
