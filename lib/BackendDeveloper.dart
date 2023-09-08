import 'Employee.dart';

class BackendDeveloper extends Employee {
  bool canUseLaravel, canUseDjango, canUseExpressJs;
  BackendDeveloper(
    super._id,
    super._salary, {
    required super.name,
    required super.address,
    required super.age,
    required super.phone,
    required super.hoursWork,
    required super.takeSalaryIsDone,
    required this.canUseLaravel,
    required this.canUseDjango,
    required this.canUseExpressJs,
  });

@override
  String toString() {
    // TODO: implement toString
  
    return 'BackendDeveloper{id: $id, salary: $salary, name: $name, address: $address, age: $age, phone: $phone, hoursWork: $hoursWork, takeSalaryIsDone: $takeSalaryIsDone, canUseLaravel: $canUseLaravel, canUseDjango: $canUseDjango, canUseExpressJs: $canUseExpressJs}';
  }
}
