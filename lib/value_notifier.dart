import 'package:flutter/material.dart';

class ScreenValueNotifier extends StatelessWidget {
  final _counter = ValueNotifier(0);

  ScreenValueNotifier({super.key});

  void _incrementCounter() {
    _counter.value++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ValueListenableBuilder(
                valueListenable: _counter,
                builder: (context, value, _) {
                  return Text(
                    '$value',
                    style: const TextStyle(fontSize: 24),
                  );
                }),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: const Text('increment'),
            ),
          ],
        ),
      ),
    );
  }
}
