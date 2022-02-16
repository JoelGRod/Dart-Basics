void main() {
  
  final rawJson = {
    'name': 'Tony',
    //'ability': 'Money'
  };
  
  // Basic constructor (positional)
  final Heroe wolverine = Heroe('Logan', 'Regen');
  //final Heroe wolverine = Heroe(rawJson['name']!, rawJson['ability']!);
  
  // Basic constructor (names)
  // final Heroe wolverine = Heroe(name: 'Logan', ability: 'Regen');
  
  // Constructor by name (json)
  final Heroe ironman = Heroe.fromJson( rawJson );
  
  // Access to properties
  /* 
   * wolverine.name = 'Logan';
   * wolverine.ability = 'Regen';
   */
  
  print(wolverine);
  print(ironman);
  
}

class Heroe {
  
  /* ------------------------------------------------- */
  // Properties
  // Can be null properties and Constructor by name (wrong)
  /* 
   * String? name;
   * String? ability;
  */
  /* ------------------------------------------------- */
  
  /* ------------------------------------------------- */
  // Properties
  String name;
  String ability;
  /* ------------------------------------------------- */
  
  /* ------------------------------------------------- */
  // Basic Constructor (positional). Note: ':' syntax it's possible too
  Heroe(this.name, this.ability);
  /* ------------------------------------------------- */
  
  /* ------------------------------------------------- */
  // Basic Constructor (names)
  /*
   * Heroe({
   *  required this.name, 
   *  required this.ability
   * });
  */
  /* ------------------------------------------------- */
  
  /* ------------------------------------------------- */
  // Constructor by name (json) (wrong)
  /* 
  Heroe.fromJson( Map<String, String> json ) {
    //this.name = json['name']!;
    //this.ability = json['ability']!;
    this.name = json['name'] ?? 'No name';
    this.ability = json['ability'] ?? 'No ability';
  }
  */
  
  // Constructor by name (json) -> : this syntax initializes at the beginning
  Heroe.fromJson( Map<String, String> json ):
    //this.name = json['name'] ?? 'No name',
    //this.ability = json['ability'] ?? 'No ability';
    name = json['name'] ?? 'No name',
    ability = json['ability'] ?? 'No ability';
  /* ------------------------------------------------- */
  
  /* ------------------------------------------------- */
  @override
  String toString() {
    //return 'name: ${this.name}, ability: ${this.ability}';
    return 'name: $name, ability: $ability';
  }
  /* ------------------------------------------------- */

}

