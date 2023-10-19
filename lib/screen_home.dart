import 'package:flutter/material.dart';
import 'package:flutter_concepts/bottom_navigation.dart';
import 'package:flutter_concepts/bottomsheet.dart';
import 'package:flutter_concepts/screen_login.dart';
import 'package:flutter_concepts/value_notifier.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FLutter Topics'),
        actions: [
          IconButton(
              onPressed: () => signOut(context),
              icon: const Icon(Icons.exit_to_app))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
        child: ListView(
          children: [
            SizedBox(
              height: 50,
              child:
                  buttons(screen: ScreenValueNotifier(), text: 'ValueNotifier'),
            ),
            const SizedBox(
              height: 16,
            ),
            const SizedBox(
              height: 50,
              child: buttons(screen: ScreenBottomSheet(), text: 'BottomSheet'),
            ),
            const SizedBox(
              height: 16,
            ),
             SizedBox(
              height: 50,
              child: buttons(
                  screen: ScreenBottomNavigation(), text: 'Bottom Navigation'),
            )
          ],
        ),
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

class buttons extends StatelessWidget {
  final Widget screen;
  final String text;
  const buttons({
    super.key,
    required this.screen,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => screen));
        },
        child: Text(
          text,
          style: const TextStyle(fontSize: 20),
        ));
  }
}
