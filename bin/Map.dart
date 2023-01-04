import 'dart:async';

void main(List<String> args) {
  //var test = {};
  //var <String,int> test = {};
  //var test = <String,int>{};
  Map<String, int> test = {
    '1st': 1,
    '2nd': 2,
  };

  print(test);

  //add
  test['3nd'] = 3;
  print(test);

  //mod
  test['1st'] = 3;
  print(test);

  //access
  var value = test['1st'];
  print(value);

  //iterating
  for (var key in test.keys) {
    print(test['key']);
  }

  for (var value in test.values) {
    print(value);
  }

  for (var entry in test.entries) {
    print('${entry.key} : ${entry.value}');
  }
}
