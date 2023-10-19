import 'package:flutter/material.dart';

class ScreenBottomSheet extends StatelessWidget {
  const ScreenBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomSheet'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showBottomSheetWidget(context),
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> showBottomSheetWidget(BuildContext context) async {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        height: 200,
        color: const Color.fromARGB(255, 226, 168, 236),
        width: double.infinity,
        child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.close)),
      ),
    );
  }
}
