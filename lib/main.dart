import 'package:end/project.dart';

import 'Accountant.dart';
import 'BackendDeveloper.dart';
import 'Employee.dart';
import 'FlutterDeveloper.dart';
import 'UIUxDeveloper.dart';
import 'company.dart';
import 'preson.dart';
import 'team.dart';
import 'manager.dart';

void main() {
  Employee Ahmed = Employee(202102, 20021,
      name: 'Ahmed',
      address: 'el giza',
      phone: '010000546',
      age: 25,
      hoursWork: 23,
      takeSalaryIsDone: false);

  Employee mohamed = Employee(202802, 20121,
      name: 'Ahmed',
      address: 'el giza',
      phone: '010098546',
      age: 28,
      hoursWork: 29,
      takeSalaryIsDone: false);

  Accountant youssef = Accountant(201234, 63215,
      name: 'youseef',
      address: 'cairo',
      age: 31,
      phone: '10002564',
      hoursWork: 31,
      takeSalaryIsDone: true);

  Project firstProject = Project(
      tital: 'flutter project',
      price: 52000,
      receivingData: DateTime(2023, 9, 30),
      deadline: DateTime(2024, 6, 30));

  Team team = Team();
  Company google = Company();

  FlutterDeveloper frontend = FlutterDeveloper(
    1, // Assuming 1 is the ID
    50000, // Assuming 50000 is the salary
    canUseCleanArc: true,
    canUseBloc: true,
    canUseFirebase: true,
    name: "John Doe",
    address: "123 Main Street",
    age: 30,
    phone: "555-555-5555",
    hoursWork: 40,
    takeSalaryIsDone: false,
  );

  BackendDeveloper backend = BackendDeveloper(
    1, // Assuming 1 is the ID
    60000, // Assuming 60000 is the salary
    name: "Jane Doe",
    address: "456 Oak Street",
    age: 25,
    phone: "555-555-5555",
    hoursWork: 45,
    takeSalaryIsDone: true,
    canUseLaravel: true,
    canUseDjango: false,
    canUseExpressJs: true,
  );

  UIUxDeveloper uiux = UIUxDeveloper(
    1, // Assuming 1 is the ID
    70000, // Assuming 70000 is the salary
    canUseFigma: true,
    canUseAdobeXd: true,
    name: "Alex Smith",
    address: "789 Pine Street",
    age: 28,
    phone: "555-555-5555",
    hoursWork: 40,
    takeSalaryIsDone: true,
  );

  team.teamLeader = Ahmed;

// Add developers to the team
  team.addEmployeeToTeam(uiux);
  team.addEmployeeToTeam(backend);
  team.addEmployeeToTeam(frontend);

  // Show the names of developers
  team.showNamesFlutterDeveloper();
  team.showNamesBackendDeveloper();
  team.showNamesUiuxDeveloper();
  team.showNameAllDevelopers();

  // Remove a developer from the team
  team.removeEmployeeFromTeam(uiux);

  // Add a project to the team
  // team.addProject(firstProject, 1);

  // Show all projects
  // team.AllProject();

  // Finish different parts of a project
  team.groupUiFinished(firstProject, 202102);
  team.groupFlutterFinished(firstProject,1);
  team.groupBackendFinished(firstProject,6);
}
