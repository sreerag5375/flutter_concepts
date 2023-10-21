import 'package:flutter/foundation.dart';
import 'package:flutter_concepts/hive_db/db/student_model.dart';
import 'package:hive_flutter/adapters.dart';

ValueNotifier<List<StudentModel>> studentNotifer = ValueNotifier([]);

Future<void> addStudent(StudentModel value) async {
  // studentNotifer.value.add(value);
  final studentDb = await Hive.openBox<StudentModel>('student_db');
  studentDb.add(value);
  getAllStudents();
}

Future<void> getAllStudents() async {
  final studentDb = await Hive.openBox<StudentModel>('student_db');
  studentNotifer.value.addAll(studentDb.values);
  studentNotifer.notifyListeners();
}
