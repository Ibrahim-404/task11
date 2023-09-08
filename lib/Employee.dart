import 'manager.dart';
import 'Accountant.dart';
import 'preson.dart';
import 'company.dart';

class Employee implements Person {
  bool takeSalaryIsDone;
  int hoursWork;
  @override
  String? name, address, phone;
  int _id, _salary;
  int? age;

  Employee(
    this._id,
    this._salary, {
    required this.name,
    required this.address,
    required this.phone,
    required this.age,
    required this.hoursWork,
    required this.takeSalaryIsDone,
  });
  @override
  // TODO: implement id
  get id =>_id;
  @override
  // TODO: implement salary
  int get salary => _salary;

//  @override
  set salary(int amount) {
    if (amount >= 0) {
      this._salary = amount;
    }
  }

  void SalaryForEmployee(int amount, Employee employee, Company company) {
    if (employee is Manager) {
      if (company.listOfEmployee.contains(company.manager?.name)) {
        if (company.listOfEmployee.contains(employee.name)) {
          salary += amount;
          print("Set salary successfully");
        }
      } else {
        print("The manager is not in the company:${company.name}");
      }
    } else if (employee is Accountant) {
      if (company.listOfEmployee.contains(company.accountant?.name)) {
        if (company.listOfEmployee.contains(employee.name)) {
          salary += amount;
          print("Set salary successfully");
        }
      } else {
        print("The manager is not in the company:${company.name}");
      }
    }
  }
}
