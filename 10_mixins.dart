void main(){
  
  final Dolphin dolphin = Dolphin();
  final Bat bat = Bat();
  final Cat cat = Cat();
  final Dove dove = Dove();
  final Duck duck = Duck();
  final Shark shark = Shark();
  final FlyingFish flyingfish = FlyingFish();
  
  dolphin.swim();
  
  bat.fly();
  bat.walk();
  
  cat.walk();
  
  dove.fly();
  dove.walk();
  
  duck.fly();
  duck.swim();
  duck.walk();
  
  shark.swim();
  
  flyingfish.fly();
  flyingfish.swim();
}

abstract class Animal {}

abstract class Mammal extends Animal {}
abstract class Bird extends Animal {}
abstract class Fish extends Animal {}

// Behaviors
abstract class FlyBehavior {
  void fly() => print('Im Flying');
}

abstract class WalkBehavior {
  void walk() => print('Im Walking');
}

abstract class SwimBehavior {
  void swim() => print('Im Swimming');
}

// Child Classes
// Mammals
class Dolphin extends Mammal with SwimBehavior {}
class Bat extends Mammal with WalkBehavior, FlyBehavior {}
class Cat extends Mammal with WalkBehavior {}
// Birds
class Dove extends Bird with WalkBehavior, FlyBehavior {}
class Duck extends Bird with SwimBehavior, WalkBehavior, FlyBehavior {}
// Fishs
class Shark extends Fish with SwimBehavior {}
class FlyingFish extends Fish with SwimBehavior, FlyBehavior {}