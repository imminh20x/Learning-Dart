void main(List<String> args) {
  List<String> name = ['Minh', 'Duc', 'Duong'];

  name.addAll(['Khang', 'Nhat', 'Luan']);

  name.insert(name.length, "Cao");

  name.remove('Cao');

  print(name);
}
