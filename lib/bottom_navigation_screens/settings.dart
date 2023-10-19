import 'package:flutter/material.dart';

class BottomNavSettingsScreen extends StatelessWidget {
  const BottomNavSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 232, 183, 241),
      child: const Center(
          child: Text(
        'Settings',
        style: TextStyle(fontSize: 22),
      )),
    );
  }
}
