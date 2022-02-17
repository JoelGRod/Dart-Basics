void main(){
  
  final Heroe superman = Heroe('Clark');
  final Villain luthor = Villain('Lex');
  
  print(superman);
  print(luthor);
  
}

abstract class Character {
  String? power;
  String name;
  
  // Constructor
  Character( this.name );
  
  @override
  String toString() {
    return '$name - $power';
  }
}

class Heroe extends Character {
  
  int brave = 100;
  
  // Constructor (with super)
  Heroe(String name): super(name);
      
}

class Villain extends Character {
  
  int evil = 100;
  
  // Constructor (with super)
  Villain(String name): super(name);
      
}