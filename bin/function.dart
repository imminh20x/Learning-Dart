import 'dart:io';

// num addition(num a, num b) {
//   return a + b;
// }
num addition(num a, num b) => a + b;

void main(List<String> args) {
  print('Input for 2 number:');
  num x, y;
  do {
    try {
      x = num.parse(stdin.readLineSync()!);
      y = num.parse(stdin.readLineSync()!);
    } catch (e) {
      print('Input error, please try again:');
      x = 0;
      y = 0;
    }
  } while (x == 0 && y == 0);

  print('Sum of $x and $y is ${addition(x, y)}');
}
