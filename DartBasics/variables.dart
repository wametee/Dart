void main() {
  // Used for storing data
  // variable keywords
  // var, final, const
  // var - used to declare a variable
  // var - the variable can be changed many times
  // final - A variable declared with final can be assigned a value only once, and this can happen at runtime. However, once it is assigned, its value cannot be changed.
  // const -  const variables must be assigned a value at compile time and cannot be changed at runtime
  var x = 10;
  var y = 20;
  var z = x + y;
  print(z);
  final a = 10;
  const b = 20;
  // a = 20; // Error
  // b = 30; // Error
  print(a);
  print(b );
}
