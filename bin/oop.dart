import 'dart:io';

class Student {
  var name = '';
  var age = 0;
  var major = [];
  var gpa = 0.0;
  var isGraduated = false;
  var isSuspended = false;

//constructor
  Student(this.name, this.age, this.major, this.gpa, this.isGraduated,
      this.isSuspended);

//method
  void printInfo() {
    print('Name: $name');
    print('Age: $age');
    print('Major: $major');
    print('GPA: $gpa');
    print('IsGraduated: $isGraduated');
    print('IsSuspended: $isSuspended');
  }
}

void main(List<String> args) {
  var student = Student('Minh', 21, ['Software Engineering'], 3.5, true, false);
  student.printInfo();
}
