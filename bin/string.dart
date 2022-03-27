void main(List<String> args) {
  String exp = '\tI am a Dev';
  String exp2 = 'I\'m Minh';
  String exp3 = "I'm Minh";

  print(exp);
  print(exp.isEmpty);
  print(exp.isNotEmpty);
  print(exp.compareTo(exp2));
  print(exp3.compareTo(exp2));
  print(exp2.substring(4, 8));
  print(exp2.length);
  print(exp.trim());

  //cong chuoi
  String exp4 = exp2 + exp;
  print(exp4);
  exp4 = 'I\'m Minh' '\tI am a Dev';
  print(exp4);

  //nhan chuoi
  String exp5 = exp * 3;
  print(exp5);

  //split and join
  List exp6 = exp2.split('');
  print(exp6);
  List exp7 = exp2.split(' ');
  print(exp7);
  String exp8 = exp6.join('');
  print(exp8);
}
