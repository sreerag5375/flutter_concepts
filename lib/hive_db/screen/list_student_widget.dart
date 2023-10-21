import 'package:flutter/material.dart';
import 'package:flutter_concepts/hive_db/db/de_functions.dart';

class ListStudentWidget extends StatelessWidget {
  const ListStudentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: studentNotifer,
      builder: (context, studentList, child) {
        return ListView.separated(
          itemBuilder: (context, index) {
            final data = studentList[index];
            return ListTile(
              title: Text(data.name),
              subtitle: Text(data.age),
            );
          },
          separatorBuilder: (context, index) => const Divider(),
          itemCount: studentList.length,
        );
      },
    );
  }
}
