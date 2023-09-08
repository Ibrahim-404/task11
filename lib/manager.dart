import 'Employee.dart';

class Manager extends Employee {
  Manager(
    super._id,
    super._salary, {
    required super.name,
    required super.address,
    required super.age,
    required super.phone,
    required super.hoursWork,
    required super.takeSalaryIsDone,
  });
}
