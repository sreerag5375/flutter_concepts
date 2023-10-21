import 'package:flutter/material.dart';
import 'package:flutter_concepts/employee_details/db/db_functions_employee.dart';

class EmployeeListWidget extends StatelessWidget {
  const EmployeeListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    getAllEmployees();
    return ValueListenableBuilder(
      valueListenable: empList,
      builder: (context, value, child) {
        return ListView.separated(
            itemBuilder: (context, index) {
              final empItem = value[index];
              return ListTile(
                // leading: Image.network(empItem.url),
                title: Text(empItem.name),
                subtitle: Text(empItem.designation),
                trailing: Column(
                  children: [
                    const Text('ID'),
                    Text(empItem.id),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => const Divider(),
            itemCount: value.length);
      },
    );
  }
}
