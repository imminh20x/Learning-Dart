import 'dart:io';

class Student {
  var name = '';
  var age = 0;
  var major = [];
  var gpa = 0.0;
  var isGraduated = false;
  var isSuspended = false;
}

void main(List<String> args) {
  var student = Student();
  student.name = 'Minh';
  student.age = 20;
  student.major = ['Software Engineering'];
  student.gpa = 3.5;
  student.isGraduated = false;
  student.isSuspended = false;
  print(student.name);
  print(student.age);
  print(student.major);
  print(student.gpa);
  print(student.isGraduated);
  print(student.isSuspended);
}
