import 'package:flutter/material.dart';
import 'package:flutter_concepts/employee_details/db/db_functions_employee.dart';
import 'package:flutter_concepts/employee_details/db/employee_model.dart';
import 'package:flutter_concepts/hive_db/db/student_model.dart';
import 'package:flutter_concepts/screen_spash.dart';
import 'package:hive_flutter/hive_flutter.dart';

const SAVE_KEY_NAME = 'userLoggedIn';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(StudentModelAdapter().typeId)) {
    Hive.registerAdapter(StudentModelAdapter());
  }
  if (!Hive.isAdapterRegistered(EmployeeModelAdapter().typeId)) {
    Hive.registerAdapter(EmployeeModelAdapter());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'simple login page',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
