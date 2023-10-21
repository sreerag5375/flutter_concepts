import 'package:hive_flutter/hive_flutter.dart';
part 'employee_model.g.dart';

@HiveType(typeId: 2)
class EmployeeModel {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String designation;
  @HiveField(3)
  final String url;

  EmployeeModel(
      {required this.id,
      required this.name,
      required this.designation,
      required this.url});
}
