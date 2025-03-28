// a) Abstract class Vehicle
abstract class Vehicle {
  // Encapsulation: Protecting speed from direct access
  late var _speed; // Initialized with a default value to prevent errors

  // Abstract method move()
  void move();

  // Setter method to update speed (Prevents direct access)
  setSpeed(int speed) {
    _speed = speed;
  }

  // Get method to retrieve speed (Ensures encapsulation)
  int get getSpeed => _speed;
}

// b) Subclass Car that extends Vehicle
class Car extends Vehicle {
  // c) Implement move() method (Prints speed correctly)
  @override
  void move() {
    print("The car is moving at $_speed km/h");
  }
}

// d) Main function to create object, set speed, and call move()
void main() {
  Car o1 = Car(); // Creating an object of Car
  o1.setSpeed(10); // Setting speed using the setter method
  o1.move(); // Calling move() method to print speed
}
