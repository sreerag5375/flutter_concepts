import 'package:flutter/material.dart';

class BottomNavPersonScreen extends StatelessWidget {
  const BottomNavPersonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 232, 183, 241),
      child: const Center(
        child: Text('person',style: TextStyle(fontSize: 22),),
      ),
    );
  }
}
