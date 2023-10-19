import 'package:flutter/material.dart';
import 'package:flutter_concepts/bottom_navigation_screens/home.dart';
import 'package:flutter_concepts/bottom_navigation_screens/person.dart';
import 'package:flutter_concepts/bottom_navigation_screens/settings.dart';

class ScreenBottomNavigation extends StatefulWidget {
  ScreenBottomNavigation({super.key});

  @override
  State<ScreenBottomNavigation> createState() => _ScreenBottomNavigationState();
}

class _ScreenBottomNavigationState extends State<ScreenBottomNavigation> {
  int _currentIndex = 0;
  final _pages = const [
    BottomNavHomeScreen(),
    BottomNavPersonScreen(),
    BottomNavSettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation'),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (value) => setState(() {
                _currentIndex = value;
              }),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings')
          ]),
    );
  }
}
