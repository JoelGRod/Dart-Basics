/*
 * Futures
 * Futures are like Promises
 */

void main(){
  
  print('Before request');
  
  httpGet('https://api.nasa.com/aliens')
    .then( (data) {
      print( data.toUpperCase() );
    });
  
  print('Program end');
  
}

Future<String> httpGet(String url) {
  return Future.delayed(
    Duration(seconds: 3), () => 
      'Hello World - 3 seconds'
  );
  /*
  return Future.delayed(
    new Duration(seconds: 3), () {
      return 'Hello World - 3 seconds';
    });
  */
}