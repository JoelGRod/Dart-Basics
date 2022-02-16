void main(){
  final String name = "Joel";
  sayHello(name);
  sayHelloTwo(lastName: "Rod");
  sayHelloThree(name: "Joel", lastName: "Glez");
}

//       Positional param  Optional param
void sayHello(String name, [String lastName = "Glez"]) {
  print('Hello $name $lastName');
}

//params by name         optional          can be null
void sayHelloTwo({String name = 'No Name', String? lastName}) {
  print('Hello $name $lastName');
}

//params by name required  
void sayHelloThree({
  required String name,
  required String lastName
  }) {
  print('Hello $name $lastName');
}