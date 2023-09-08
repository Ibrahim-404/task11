import 'Employee.dart';
import 'company.dart';

class Accountant extends Employee {
  Accountant(
    super._id,
    super._salary, {
    required super.name,
    required super.address,
    required super.age,
    required super.phone,
    required super.hoursWork,
    required super.takeSalaryIsDone,
  });
  set salary(int amout) {
    this.salary = amout;
  }

//method
  calculateSalary(Employee employee, Company company) {
    if (company.listOfEmployee.contains(employee.name) &&
        company.listOfEmployee.contains(this.name)) {
      if (this.hoursWork > 200) {
        try {
          salary += (hoursWork - 200) * 10;
        } catch (e) {
          print('error in class Accountant error is:$e');
        }
      } else if (hoursWork < 200) {
        try {
          salary -= (200 - hoursWork) * 10;
        } catch (e) {
          print('error in class Accountant error is:$e');
        }
      } else {
        salary = salary;
      }
    }
  }
//method 2

  sendSalary(Employee employee) {
    employee.takeSalaryIsDone = true;
  }

// method 3

  void addBonusEmployee(int bouns, Employee employee, Company company) {
    SalaryForEmployee(bouns, employee, company);
  }
// method 4
  void minusFromEmployee(int munis, Employee employee, Company company) {
    SalaryForEmployee(-munis, employee, company);
  }
}
