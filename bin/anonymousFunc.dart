void main(List<String> args) {
  //anonymous func is func with no name, no return type, just args
  (name) => 'Hi $name';
  //to use
  final sayhi = (name1) => 'hi $name1';
  print(sayhi('Minh'));
}