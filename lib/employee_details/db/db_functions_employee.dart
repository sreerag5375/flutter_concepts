import 'package:flutter/material.dart';
import 'package:flutter_concepts/employee_details/db/employee_model.dart';
import 'package:hive_flutter/adapters.dart';

ValueNotifier<List<EmployeeModel>> empList = ValueNotifier([]);

Future<void> addEmployee(EmployeeModel model) async {
  final empDb = await Hive.openBox<EmployeeModel>('employee_db');
  empDb.add(model);
  empList.value.add(model);
  empList.notifyListeners();
  // getAllEmployees();
}

Future<void> getAllEmployees() async {
  final empDb = await Hive.openBox<EmployeeModel>('employee_db');
  empList.value.clear();
  empList.value.addAll(empDb.values);
  empList.notifyListeners();
}

clearAllDb() async {
  empList.value.clear();
  final empDb = await Hive.openBox<EmployeeModel>('employee_db');
  empDb.clear();
}
