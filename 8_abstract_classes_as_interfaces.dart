void main() {

  final Dog dog = Dog();
  final Cat cat = Cat();
  
  animalSound(dog);
  animalSound(cat);
  
}

void animalSound( Animal animal ) {
  animal.emitSound();
}

abstract class Animal {
  
  int? paws;
  
  void emitSound();
  
}

class Dog implements Animal {
  
  int? paws;
  
  void emitSound() => print('Worf!!');
  
}

class Cat implements Animal {
  int? paws;
  int? tail;
  
  void emitSound() => print('Miauuu!!');
}