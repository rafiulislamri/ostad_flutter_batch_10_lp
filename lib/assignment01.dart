abstract class Vehicle {
  late var _speed;
  void move();
  setSpeed(int speed) {
    _speed = speed;
  }

  int get getSpeed => _speed;
}

class Car extends Vehicle {
  @override
  void move() {
    print("The car is moving at $_speed km/h");
  }
}

main() {
  Car o1 = Car();
  o1.setSpeed(10);
  o1.move();
}
