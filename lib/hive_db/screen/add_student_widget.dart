import 'package:flutter/material.dart';
import 'package:flutter_concepts/hive_db/db/de_functions.dart';
import 'package:flutter_concepts/hive_db/db/student_model.dart';

class AddStudent extends StatelessWidget {
  AddStudent({super.key});

  final _nameController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        children: [
          TextFormField(
            controller: _nameController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: 'Name'),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: _ageController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: 'Age'),
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
              onPressed: () => addStudentButtonClicked(),
              child: const Text('add student'))
        ],
      ),
    );
  }

  Future<void> addStudentButtonClicked() async {
    final name = _nameController.text.trim();
    final age = _ageController.text.trim();

    if (name.isEmpty || age.isEmpty) {
      return;
    } else {
      final student = StudentModel(name: name, age: age);
      addStudent(student);
    }
  }
}
