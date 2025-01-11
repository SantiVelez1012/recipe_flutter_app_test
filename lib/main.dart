import 'package:flutter/material.dart';

void main() {
  runApp(RecipeApp());
}


class RecipeApp extends StatelessWidget{
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text( 'Android'),
        ),
      ),
    );

  }



}
