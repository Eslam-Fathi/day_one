import 'dart:math';

abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;

  //constructor
  Circle(this.radius);

  @override
  double area() {
    return pi * radius * radius;
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}

void outPutarea(Shape shape) {
  print('The area is: ${shape.area()}');
}
