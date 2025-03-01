void main() {
  // Example of 'as' keyword
  num number = 42;
  int integer = number as int;
  print(integer); // Output: 42

  // Uncommenting the following line will throw an error at runtime
  // double decimal = number as double; // Throws error


  // Example of 'is!' keyword
  if (number is! double) {
    print("number is not a double"); // Output: number is not a double
  }

  // Type conversion methods
  String str = "123";
  int convertedInt = int.parse(str);
  double convertedDouble = double.parse(str);
  print(convertedInt); // Output: 123
  print(convertedDouble); // Output: 123.0
}