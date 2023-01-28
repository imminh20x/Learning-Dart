//loop
String reversed(String s) {
  String temp = "";
  for (int i = s.length - 1; i >= 0; i--) {
    temp += s[i];
  }
  return temp;
}

void main(List<String> args) {
// split into a List and reversed then join back into a String
  var a = "Discover Flutter";
  a = a.split("").reversed.join("");
  print(a);

// Change to UTF-16 code and reversed then change back to String
  a = "Discover Flutter";
  a = String.fromCharCodes(a.codeUnits.reversed);
  print(a);

//loop
  print(reversed("Discover Flutter"));
}
