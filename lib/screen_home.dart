import 'package:flutter/material.dart';
import 'package:flutter_concepts/screen_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('home page'),
        actions: [
          IconButton(
              onPressed: () => signOut(context),
              icon: const Icon(Icons.exit_to_app))
        ],
      ),
    );
  }

    // When the user taps the "Sign Out" button  we perform 
    // the action of clearing the user's stored data in
    // SharedPreferences, effectively logging them out and navigate to login screen
  void signOut(BuildContext ctx) async {
    final _sharedPref = await SharedPreferences.getInstance();
    _sharedPref.setBool('SAVE_KEY_NAME', false);
    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
        (route) => false);
  }
}
