import 'package:flutter/material.dart';

class BottomNavHomeScreen extends StatelessWidget {
  const BottomNavHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 232, 183, 241),
      child: const Center(
        child: Text(
          'Home',
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
