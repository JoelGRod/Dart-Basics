// import 'dart:math';      // Import all methods from dart:math
import 'dart:math' as math; // This way we have access to all available methods with . notation (help)

void main() {

  final Square square = Square( 5 );
  
  // Method call
  print('Area method: ${ square.calcArea() }');
  // Property access
  print('Side property: ${ square.side }');
  // Area getter
  print('Area getter: ${ square.area }');
  // Area setter
  square.area = 25;
  
}

class Square {
  
  // Properties
  double side = 0;
  
  // Basic Constructor
  Square( double newSide ):
    side = newSide;
  
  // Method
  double calcArea() {
    return side * side;
  }
  
  // Getter
  double get area {
    return side * side;
  }
  
  // Setter
  set area( double value ) {
    //print('set area: $value');
    side = math.sqrt(value);
  }
  
}