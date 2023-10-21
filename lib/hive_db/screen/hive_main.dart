import 'package:flutter/material.dart';
import 'package:flutter_concepts/hive_db/db/de_functions.dart';
import 'package:flutter_concepts/hive_db/screen/add_student_widget.dart';
import 'package:flutter_concepts/hive_db/screen/list_student_widget.dart';

class ScreenHiveMain extends StatelessWidget {
  const ScreenHiveMain({super.key});

  @override
  Widget build(BuildContext context) {
    getAllStudents();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Students record'),
      ),
      body: Column(
        children: [
          AddStudent(),
          const SizedBox(
            height: 30,
          ),
          const Expanded(child: ListStudentWidget())
        ],
      ),
    );
  }
}
