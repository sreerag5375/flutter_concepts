import 'package:flutter/material.dart';
import 'package:flutter_concepts/screen_whatsapp_userchat.dart';

class WhatsappHomeScreen extends StatelessWidget {
  const WhatsappHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WhatsApp'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                leading: const CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/premium-photo/cartoon-man-wearing-orange-hoodie-with-orange-eyes_662214-99697.jpg?w=360'),
                ),
                title: Text('User ${index + 1}'),
                subtitle: const Text('You have a new message'),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return WhatsappUserChatScreen(name: 'User ${index + 1}');
                    },
                  ));
                },
              ),
          separatorBuilder: (context, index) => const Divider(
                thickness: 3,
              ),
          itemCount: 30),
    );
  }
}
