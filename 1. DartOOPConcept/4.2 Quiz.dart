// ❓ Question 2:
// Create a base class Employee with properties: name and salary.
// Create two subclasses:
// Manager → adds department
// Developer → adds programmingLanguage
// Both should have a method to display full info.
// Create objects and display details.

class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);
}

class Manager extends Employee {
  String department;

  Manager(String name, double salary, this.department)
      : super(name, salary);

  void displayInfo() {
    print("Manager Name: $name");
    print("Department: $department");
    print("Salary: $salary");
  }
}

class Developer extends Employee {
  String programmingLanguage;

  Developer(String name, double salary, this.programmingLanguage)
      : super(name, salary);

  void displayInfo() {
    print("Developer Name: $name");
    print("Programming Language: $programmingLanguage");
    print("Salary: $salary");
  }
}

void main() {
  Manager m1 = Manager("Saker", 30000, "Marketing");
  Developer d1 = Developer("Manik", 20000, "Dart");

  print("Manager Details:");
  m1.displayInfo();

  print("\nDeveloper Details:");
  d1.displayInfo();
}
