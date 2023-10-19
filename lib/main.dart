import 'package:flutter/material.dart';
import 'package:flutter_concepts/screen_spash.dart';

const SAVE_KEY_NAME = 'userLoggedIn';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'simple login page',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
