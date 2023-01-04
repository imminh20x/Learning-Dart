void main(List<String> args) {
  const pizzaPrices = {
    'marghetina': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  const order = ['marghetina', 'pepperoni', 'piniro', 'lamego'];
  var total = 0.0;

  for (var item in order) {
    var price = pizzaPrices[item];
    if (pizzaPrices[item] == null) {
      print('$item pizza is not in the menu');
    } else {
      total += price!;
    }
  }

  print('Total: \$$total');
}
