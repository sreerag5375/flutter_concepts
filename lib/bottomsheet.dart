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
        color: Colors.blueGrey,
        width: double.infinity,
      ),
    );
  }
}
