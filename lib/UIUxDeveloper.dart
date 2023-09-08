import 'Employee.dart';

class UIUxDeveloper extends Employee {
  bool canUseFigma, canUseAdobeXd;
  UIUxDeveloper(
    super._id,
    super._salary, {
    required this.canUseFigma,
    required this.canUseAdobeXd,
    required super.name,
    required super.address,
    required super.age,
    required super.phone,
    required super.hoursWork,
    required super.takeSalaryIsDone,
  });
@override
String toString() {
    // TODO: implement toString
    return 'UIUxDeveloper{canUseFigma: $canUseFigma, canUseAdobeXd: $canUseAdobeXd, name: $name, address: $address, age: $age, phone: $phone, hoursWork: $hoursWork, takeSalaryIsDone: $takeSalaryIsDone}';
  }

}
