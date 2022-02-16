void main() {
  /* ------------------------------------------------------------- */
  // Lists
  // Dynamic List
  List numbers = [1,2,3,4,5,6,7,8];
  numbers.add(9);
  numbers.add('10');
  
  print(numbers);
  print(numbers[0]);
  // print(numbers[100]); Range Error
  
  // Strict List
  List<int> typed_numbers = [1,2,3,4,5,6];
  typed_numbers.add(7);
  
  print(typed_numbers);
  
  // Generated List
  final generated_nums = List.generate(100, (int index) => index);
  print(generated_nums);

  /* ------------------------------------------------------------- */
  // Map (dynamic)
  Map person = {
    "name": "Joel",
    "age": 39,
    "single": true,
    true: false,
    1: 100,
    2: 200
  };
  
  person.addAll({ 3: "test" });
  
  print(person["age"]);
  print(person[true]);
  print(person[2]);
  print(person);
  
  // Map (Strict)
  //  Key     Value 
  Map<String, dynamic> typed_person = {
    "name": "Joel",
    "age": 39,
    "single": true
  };
  
  print(typed_person["age"]);

}