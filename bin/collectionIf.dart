import 'dart:math';
import 'package:collection/collection.dart';

void main(List<String> args) {
  const addBlue = true;
  const addRed = false;
  const extraColor = ['yellow', 'pupple', 'red'];
  final color = [
    'grey',
    'brown',
    if (addBlue) 'blue',
    if (addRed) 'red',
    ...extraColor,
    // for (var colors in extraColor)
    //   colors,
  ];

  //color.addAll(extraColor);

  print(color);
  const ratings = [4.0, 3.5, 4.5];
  final restaurants = {
    'name': 'Pizza Mario',
    'cuisine': 'Italian',
    if (ratings.length >= 2) ...{
      'ratings': ratings,
      'popular': true,
    },
  };

  
}
