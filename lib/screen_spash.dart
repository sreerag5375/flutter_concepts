import 'package:flutter/material.dart';
import 'package:flutter_concepts/screen_home.dart';
import 'package:flutter_concepts/screen_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    checkLoginDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/32271.jpg',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }

  Future<void> gotoLoginPage() async {
    await Future.delayed(const Duration(seconds: 3));
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => LoginScreen(),
    ));
  }

  Future<void> checkLoginDetails() async {
    final _sharedPref = await SharedPreferences.getInstance();
    final checkLogin = _sharedPref.getBool('SAVE_KEY_NAME');
    // If the `SharedPreferences` value is null or holds a 'false' value,
    // navigate to the login page to login the user.
    if (checkLogin == false || checkLogin == null) {
      gotoLoginPage();
    } else {
      // the `SharedPreferences` contains a value indicating that the user
      // has successfully logged in. In such cases, we proceed to navigate
      // the user to the home screen

      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ));
    }
  }
}
