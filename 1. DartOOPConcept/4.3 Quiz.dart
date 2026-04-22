// ❓ Question 3:
// Create an abstract class Appliance with:
// turnOn()
// turnOff()
// Create subclasses:
// Fan
// Light
// Call their methods.

abstract class Appliance {
  void turnOn();
  void turnOff();
}

class Fan extends Appliance {
  @override
  void turnOn() {
    print("Fan is now running");
  }

  @override
  void turnOff() {
    print("Fan is turned off");
  }
}

class Light extends Appliance {
  @override
  void turnOn() {
    print("Light is switched on");
  }

  @override
  void turnOff() {
    print("Light is turned off");
  }
}

void main() {
  Fan fan = Fan();
  Light light = Light();

  print("Fan:");
  fan.turnOn();
  fan.turnOff();

  print("\nLight:");
  light.turnOn();
  light.turnOff();
}
