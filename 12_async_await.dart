/*
 * Async / Await
 * 
 */

void main() async{
  
  print('Before request');
  
  // Example I
  String data = await httpGet('https://api.nasa.com/aliens');
  print(data);
  
  // Example II
  String name = await getName('10');
  print(name);
  
  // Example III
  getName('12').then( (name) => print(name) );
  
  // Example IV
  getName('12').then( print );
  
  print('Program end');
  
}

Future<String> httpGet(String url) {
  return Future.delayed(
    Duration(seconds: 3), () => 
      'Hello World - 3 seconds'
  );
}

Future<String> getName(String id) async {
  return '$id - Joel';
}