import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [

        const SizedBox(height: 20),
        const Text('Login Screen'),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/');
          },
          child: const Text('Go to Home'),
        ),


      ],
    );
  }
}