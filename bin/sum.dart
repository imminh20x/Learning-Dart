double sumList(List<double> values) {
  var sum = 0.0;
  for (var value in values) {
    sum += value;
  }
  return sum;
}

void main(List<String> args) {
  print(sumList([1, 2]));
  print(sumList([1, 2, 3, 4]));
}
