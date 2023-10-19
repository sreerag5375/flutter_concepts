import 'package:flutter/material.dart';

class ScreenDropDown extends StatelessWidget {
  ScreenDropDown({super.key});
  List<String> _langList = ['java', 'javascript', 'dart', 'c++', 'python'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dropdown'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButtonFormField(
            hint: Text('select your fav language'),
            onChanged: (value) {
              print(value);
            },
            items: _langList.map((String item) {
              return DropdownMenuItem(
                value: item,
                child: Text(item),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
