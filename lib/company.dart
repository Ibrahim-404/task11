import 'package:end/Accountant.dart';
import 'package:end/manager.dart';
import 'package:end/team.dart';
import 'Employee.dart';

class Company {
  String? name, address, phone;
  int? account;
  Manager? manager;
  Accountant? accountant;

  List<Team> listOfteam = [];
  List<Employee> listOfEmployee = [];

  bool isEmployeeExist(Employee employee) {
    bool isEmployee = false;
    this.listOfEmployee.forEach((element) {
      if (element.name == employee.name) {
        isEmployee = true;
        print('found');
      }
    });
    return isEmployee;
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'Company{cmpany name:$name, cmpany address:$address,account:$account ,manager${manager?.name},accountant:${accountant?.name}}';
  }
}
