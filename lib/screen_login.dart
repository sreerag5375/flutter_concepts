import 'package:flutter/material.dart';
import 'package:flutter_concepts/screen_home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    getSavedData(context);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const TextField(),
            ElevatedButton(
                onPressed: () => saveToSharedPref(),
                child: const Text('submit'))
          ],
        ),
      ),
    );
  }

  Future<void> saveToSharedPref() async {
    // shared pref
    final _sharedPref = await SharedPreferences.getInstance();

    // save data
    _sharedPref.setString('login_value', _textController.text);
  }

  Future<void> getSavedData(BuildContext context) async {
    final sharedPref = await SharedPreferences.getInstance();
    final _login_credintials = sharedPref.getString('login_value');
    if (_login_credintials != null) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ));
    }
  }
}
