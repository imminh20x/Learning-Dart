import 'dart:math';

tinhTong(var x, var y) {
  return (x + y);
}

void main(List<String> arguments) {
  print('Hello world!');
  print('Toi la Minh');
  print(7 + 2);
  print("");

  var intValue;
  print(intValue = Random().nextInt(5));
  print(intValue = Random().nextInt(5));
  print(intValue = Random().nextInt(5));
  print(intValue = Random().nextInt(5));
  print(intValue = Random().nextInt(5));

  print(tinhTong(12.6, 3));

  var name = 'Minh';
  var age = 21;
  print('Ten toi la $name va toi $age tuoi.');
}
