import 'Employee.dart';

class FlutterDeveloper extends Employee {
  bool canUseCleanArc, canUseFirebase, canUseBloc;

  FlutterDeveloper(
    super._id,
    super._salary, {
    required this.canUseCleanArc,
    required this.canUseBloc,
    required this.canUseFirebase,
    required super.name,
    required super.address,
    required super.age,
    required super.phone,
    required super.hoursWork,
    required super.takeSalaryIsDone,
  });
  @override
 
 String toString() {
    return 'FlutterDeveloper{id: $id, name: $name, address: $address, age: $age, phone: $phone, salary: $salary, '
        'hoursWork: $hoursWork, takeSalaryIsDone: $takeSalaryIsDone, '
        'canUseCleanArc: $canUseCleanArc, canUseBloc: $canUseBloc, canUseFirebase: $canUseFirebase}'; 
         }
}
