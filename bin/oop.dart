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

  // Student(Student newStudent) {
  //   name = newStudent.name;
  //   age = newStudent.age;
  //   major = newStudent.major;
  //   gpa = newStudent.gpa;
  //   isGraduated = newStudent.isGraduated;
  //   isSuspended = newStudent.isSuspended;
  // }
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
  // student.name = 'Minh';
  // student.age = 20;
  // student.major = ['Software Engineering'];
  // student.gpa = 3.5;
  // student.isGraduated = false;
  // student.isSuspended = false;
  // print(student.name);
  // print(student.age);
  // print(student.major);
  // print(student.gpa);
  // print(student.isGraduated);
  // print(student.isSuspended);
  student.printInfo();
}
