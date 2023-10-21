import 'package:flutter/material.dart';
import 'package:flutter_concepts/employee_details/db/db_functions_employee.dart';
import 'package:flutter_concepts/employee_details/db/employee_model.dart';

class AddEmployeeWidget extends StatelessWidget {
  AddEmployeeWidget({super.key});
  final idController = TextEditingController();
  final nameController = TextEditingController();
  final designationController = TextEditingController();
  final profilePicController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 26, left: 12, right: 12),
      child: Column(
        children: [
          EmployeeTextFieldWiget(
            textFieldController: idController,
            placeHolder: 'Employee id',
          ),
          spacing(height: 12),
          EmployeeTextFieldWiget(
            textFieldController: nameController,
            placeHolder: 'Employee name',
          ),
          spacing(height: 12),
          EmployeeTextFieldWiget(
              textFieldController: designationController,
              placeHolder: 'Designation'),
          spacing(height: 12),
          EmployeeTextFieldWiget(
            textFieldController: profilePicController,
            placeHolder: 'Profile pic url',
          ),
          spacing(height: 20),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    final id = idController.text;
                    final name = nameController.text;
                    final designation = designationController.text;
                    final url = profilePicController.text;
                    final empModel = EmployeeModel(
                        id: id, name: name, designation: designation, url: url);
                    addEmployee(empModel);
                    clearInputFields();
                  },
                  child: const Text('Add Details')))
        ],
      ),
    );
  }

  SizedBox spacing({required double height}) {
    return SizedBox(
      height: height,
    );
  }

  void clearInputFields(){
    nameController.clear();
    idController.clear();
    designationController.clear();
    profilePicController.clear();
  }
}



// textfield widget
class EmployeeTextFieldWiget extends StatelessWidget {
  const EmployeeTextFieldWiget({
    super.key,
    required this.textFieldController,
    required this.placeHolder,
  });

  final TextEditingController textFieldController;
  final String placeHolder;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textFieldController,
      decoration: InputDecoration(
          border: const OutlineInputBorder(), hintText: placeHolder),
    );
  }
}
