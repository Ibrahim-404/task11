import 'package:end/BackendDeveloper.dart';
import 'package:end/FlutterDeveloper.dart';
import 'package:end/UIUxDeveloper.dart';
import 'package:end/project.dart';

import 'Employee.dart';

class Team {
  String? teamNmae;
  Employee? teamLeader;
  List<FlutterDeveloper> flutterGroups = [];
  List<BackendDeveloper> backendGroups = [];
  List<UIUxDeveloper> uiUxGroups = [];
  List<Employee> allTeamDevelopers = [];
  List<Project> project = [];

  void showNamesFlutterDeveloper() {
    print("Flutter Developers:");
    if (flutterGroups.isEmpty) {
      print("there is No Flutter Developer");
    } else {
      flutterGroups.forEach((element) {
        print(element.name);
      });
    }
  }

  void showNamesBackendDeveloper() {
    print("Flutter Developers:");
    if (backendGroups.isEmpty) {
      print("there is No backend Developer");
    } else {
      backendGroups.forEach((element) {
        print(element.name);
      });
    }
  }

  void showNamesUiuxDeveloper() {
    print("UI/UX Developers:");
    if (uiUxGroups.isEmpty) {
      print("there is No ui/ux Developer");
    } else {
      uiUxGroups.forEach((element) {
        print(element.name);
      });
    }
  }

  void showNameAllDevelopers() {
    print("All Developers in the Team:");
    if (allTeamDevelopers.isEmpty) {
      print("There are no developers in the team.");
    } else {
      allTeamDevelopers.forEach((developer) {
        print(developer.name);
      });
    }
  }

  addEmployeeToTeam(Employee employee) {
    if (employee is FlutterDeveloper) {
      if (flutterGroups.length < 8) {
        flutterGroups.add(employee);
        allTeamDevelopers.add(employee);
        print('added ${employee.name} to flutter group');
      } else {
        print('the flutter group is full');
      }
    } else if (employee is BackendDeveloper) {
      if (backendGroups.length < 8) {
        backendGroups.add(employee);
        allTeamDevelopers.add(employee);
        print('added ${employee.name} to backend group');
      } else {
        print('the backend group is full');
      }
    } else if (employee is UIUxDeveloper) {
      if (uiUxGroups.length < 8) {
        uiUxGroups.add(employee);
        allTeamDevelopers.add(employee);
        print('added ${employee.name} to ui/ux group');
      } else {
        print('the ui/ux group is full');
      }
    } else {
      print(
          " can't add this employee , the team want just flutter or backend or ui/ui developer");
    }
  }

  removeEmployeeFromTeam(Employee employee) {
    if (employee is FlutterDeveloper) {
      if (flutterGroups.isNotEmpty) {
        if (flutterGroups.contains(employee)) {
          flutterGroups.remove(employee);
          allTeamDevelopers.remove(employee);
          print('removed ${employee.name} from flutter group');
        } else {
          print('this employee is not existing');
        }
      } else {
        print('the flutter group is empty');
      }
    } else if (employee is BackendDeveloper) {
      if (backendGroups.isNotEmpty) {
        if (backendGroups.contains(employee)) {
          backendGroups.remove(employee);
          allTeamDevelopers.remove(employee);
          print('removed ${employee.name} from backend group');
        } else {
          print('this employee is not existing');
        }
      } else {
        print('the backend group is empty');
      }
    } else if (employee is UIUxDeveloper) {
      if (uiUxGroups.isNotEmpty) {
        if (uiUxGroups.contains(employee)) {
          uiUxGroups.remove(employee);
          allTeamDevelopers.remove(employee);
          print('removed ${employee.name} from ui/ux group');
        } else {
          print('this employee is not existing');
        }
      } else {
        print('the ui/ux group is empty');
      }
    } else {
      print(
          "this employee cannot be removed,the team only has a flutter and backend developer and a ui/ux developer");
    }
  }

  void addProject(Project project, int teamLeaderId) {
    if (teamLeader?.id == teamLeaderId) {
      if (flutterGroups.length >= 2 &&
          backendGroups.length >= 2 &&
          uiUxGroups.length >= 1) {
        int receiving_data = int.parse(
            'project.receivingData.year,project.receivingData.month,project.receivingData.day');
        int days = project.deadline.difference(project.receivingData).inDays;
        if (days < 30) {
          this.project.add(project);
        } else {
          print("The team can't finish any project before 30 days");
        }
      } else {
        print(
            "this team is not complete , The team must contain at least one ui developer, at least 2 flutter developer,and at least 2 backend developer");
      }
    } else {
      print(
          " you are not team leader , if you are team leader please enter your correct id ");
    }
  }

  AllProject() {
    this.project.forEach((element) {
      print(" tital ${element.tital}");
      print(" price ${element.price}");
      print(" deadline ${element.deadline}");
      print(" receiving Data ${element.receivingData}");
      print(" is ui done ${element.isUiDone}");
      print("is Flutter Done ${element.isFlutterDone}");
      print(" is Backend Done ${element.isBackendDone}");
      print(" is Project Done ${element.isProjectDone}");
    });
  }

  groupUiFinished(Project project, int teamLeaderId) {
    if (this.teamLeader!.id == teamLeaderId) {
      if (this.project.contains(project)) {
        project.uiFinished();
      } else {
        print(" this Project is not exist with the team");
      }
    } else {
      print(
          " you are not team leader , if you are team leader please enter your correct id ");
    }
  }

groupFlutterFinished(Project project, int teamLeaderId){
if (this.teamLeader!.id == teamLeaderId) {
      if (this.project.contains(project)) {
        project.flutterFinished();
      } else {
        print(" this Project is not exist with the team");
      }
    } else {
      print(
          " you are not team leader , if you are team leader please enter your correct id ");
    }
  }

groupBackendFinished(Project project, int teamLeaderId){
   if (this.teamLeader!.id == teamLeaderId) {
      if (this.project.contains(project)) {
        project.baackendFinished();
      } else {
        print(" this Project is not exist with the team");
      }
    } else {
      print(
          " you are not team leader , if you are team leader please enter your correct id ");
    }
}










}
