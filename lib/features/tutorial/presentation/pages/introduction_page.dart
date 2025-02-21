import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 20),
        const SizedBox(height: 20),
        Row(
          crossAxisAlignment : CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
          context.go('/login');
              },
              child: const Text('Go to Login'),
            ),
          ),]
        ),
      ],
    );
  }
}
