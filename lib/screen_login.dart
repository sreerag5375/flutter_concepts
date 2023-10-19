import 'package:flutter/material.dart';
import 'package:flutter_concepts/screen_home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/login_img.jpg'),
                      fit: BoxFit.cover)),
            ),
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: formkey,
                  child: Column(
                    children: [
                      const Text(
                        'LOGIN',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 18,),
                      TextFormField(
                        controller: nameController,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(), hintText: 'name...'),
                        validator: (value) =>
                            (value == null || value.length < 4)
                                ? 'Username must contain at least 4 numbers.'
                                : null,
                      ),
                      const SizedBox(height: 12,),
                      TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'password...',
                        ),
                        validator: (value) =>
                            (value == null || value.length < 3)
                                ? 'Password must contain at least 4 numbers.'
                                : null,
                      ),
                      const SizedBox(height: 28,),
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {
                                formkey.currentState!.validate();
                                checkCredentials(context);
                              },
                              child: const Text('Login'))),
                      const SizedBox(height: 2,),
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {}, child: const Text('Sign out')))
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Widget spacer({required double height}) {
    return SizedBox(
      height: height,
    );
  }

  void checkCredentials(BuildContext context) async {
    final name = nameController.text;
    final password = passwordController.text;
    // when the user enters a valid username and password,
    // store the data into sharedpreferences and navigate
    // user to the home screen
    if (name.length > 3 && password.length > 3) {
      final _sharedPref = await SharedPreferences.getInstance();
      _sharedPref.setBool('SAVE_KEY_NAME', true);
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return const HomeScreen();
      }));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Username and password do not match')));
    }
  }
}
