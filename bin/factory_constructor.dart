//Factory constructor:
// - Implement a constructor that doesn’t always create
// - Initialize a final variable using logic
import 'dart:math';

abstract class Shape {
  const Shape();
  double get area;
  
  factory Shape.fromJson(Map<String, Object> json) {
    final type = json['type'];
    switch (type) {
      case 'square':
        final side = json['side'];
        if (side is double) {
          return Square(side);
        }
        throw UnsupportedError('invalid or missing side property');
      case 'circle':
        final radius = json['radius'];
        if (radius is double) {
          return Circle(radius);
        }
        throw UnsupportedError('invalid or missing radius property');
      default:
        throw UnimplementedError('shape $type is not recognized');
    }
  }
}

class Square extends Shape {
  final double side;
  Square(this.side);

  @override
  double get area => side * side;
}

class Circle extends Shape {
  final double radius;
  Circle(this.radius);

  @override
  double get area => pi * radius * radius;
}

void printArea(Shape shape) {
  print(shape.area);
}

void main(List<String> args) {
  // final Shape circle = Circle(10);
  // printArea(circle);
  // final Shape square = Square(10);
  // printArea(square);
  // final List<Shape> shapes = [Circle(10), Square(10)];
  // shapes.forEach(printArea);

  final shapeJson = [
    {
      'type': 'circle',
      'radius': 10.0,
    },
    {
      'type': 'square',
      'side': 10.0,
    },
  ];

  final shapes = shapeJson.map((e) => Shape.fromJson(e));
  shapes.forEach(printArea);
}
