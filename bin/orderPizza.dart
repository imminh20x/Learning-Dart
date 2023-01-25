import 'dart:io';

void main(List<String> args) {
  final order = orderPiz(args);
  var total = calculate(order);
  print('Total: \$$total');
}


double calculate(List order) {
  const pizzaPrices = {
    'marghetina': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };
  var total = 0.0;
  for (var item in order) {
    final price = pizzaPrices[item];
    if (price == null) {
      print('$item pizza is not in the menu');
    } else {
      total += price;
    }
  }
  return total;
}

List orderPiz(List<String> items) {
  List order = [];
  for (var item in items) {
    order.add(item);
  }
  return order;
}

// List orderPiz() {
//   print('How many pizza you want to buy?: ');
//   int amount = int.parse(stdin.readLineSync()!);
//   var item = 1;
//   var pizza;
//   List<String> pizzaList = [];
//   print('Which pizza you want to buy?');
//   while (item <= amount) {
//     pizza = stdin.readLineSync()!;
//     pizzaList.add(pizza);
//   }
//   return pizzaList;
//}
