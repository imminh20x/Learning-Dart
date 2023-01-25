void main(List<String> args) {
  String content = 'Wellcome to my dart programing';
  List letterList = content.split('');
  Map count = {};
  for (String i in letterList) {
    //Key      Value
    count[i] = i.allMatches(content).length;
  }
  // letterList.forEach(
  //   (element) => count[element] = element.allMatches(content).length,
  // );
  print(count);
}
