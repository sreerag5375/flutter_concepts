import 'package:flutter/material.dart';
import 'package:flutter_concepts/employee_details/screens/add_employee.dart';
import 'package:flutter_concepts/employee_details/screens/list_employee.dart';

class EmployeeHomeScreen extends StatelessWidget {
  const EmployeeHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee Details'),
      ),
      body: Column(
        children: [AddEmployeeWidget(), 
        const SizedBox(height: 30,),
        const Expanded(child: EmployeeListWidget())],
      ),
    );
  }
}
