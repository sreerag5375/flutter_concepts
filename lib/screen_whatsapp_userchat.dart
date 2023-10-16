import 'package:flutter/material.dart';

class WhatsappUserChatScreen extends StatelessWidget {
  final String name;

  const WhatsappUserChatScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: const Center(
        child: Text('Hello Friend'),
      ),
    );
  }
}
