import 'dart:io';

void main(List<String> args) {
  num grade = 0;

  print('Input:');
  num attendance = int.parse(stdin.readLineSync()!);
  num homework = int.parse(stdin.readLineSync()!);
  num exam = int.parse(stdin.readLineSync()!);

  grade = (attendance * 0.2 + homework * 0.3 + exam * 0.5).round();

  print('Student grade is: $grade');
}
