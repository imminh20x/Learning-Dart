void main(List<String> args) {
  String content = 'Wellcome to my dart programing';
  List letterList = content.split('');
  Map<String, int> count = {};

  for (String i in letterList) {
    count[i] = i.allMatches(content).length;
  }

  print(count);
}
