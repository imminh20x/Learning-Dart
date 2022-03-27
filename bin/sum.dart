import 'dart:io';

sum(var a, var b) {
  return (a + b);
}

void main() {
  var x, y;
  print("Nhap 2 so can tinh:");
  do {
    try {
      x = int.parse(stdin.readLineSync()!);
      y = int.parse(stdin.readLineSync()!);
    } catch (e) {
      print("Nhập sai định dạng. Yêu cầu nhập lại:");
      x = 0;
      y = 0;
    }
  } while (x == 0 && y == 0);

  print(sum(x, y));
}

// void main(List<String> args) {
//   var x = int.parse(stdin.readLineSync()!);
//   var y = int.parse(stdin.readLineSync()!);
//   print(sum(x, y));
// }
