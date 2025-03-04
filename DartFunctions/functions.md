# Dart Functions

## 1. Function Structure
A function in Dart is a block of code that performs a specific task. The basic structure of a function consists of:

```dart
returnType functionName(parameters) {
  // Function body
  return value; // If returnType is not void
}
```

## 2. Creating a Function
A function is created using the `returnType`, followed by the function name and parameters.

Example:
```dart
int add(int a, int b) {
  return a + b;
}
```

## 3. Function Return Data Types
Dart functions can return different data types, including:
- `int`
- `double`
- `String`
- `bool`
- `List` and `Map`

Example:
```dart
String greet(String name) {
  return "Hello, " + name + "!";
}
```

## 4. Void Function
A function that does not return any value uses the `void` keyword.

Example:
```dart
void printMessage() {
  print("Welcome to Dart Programming!");
}
```

## 5. Function Returning Expression
Dart supports concise functions using `=>` for returning expressions.

Example:
```dart
double square(double num) => num * num;
```

## 6. Function and Variable Scope
Scope refers to where a variable or function can be accessed.

- **Local Variables**: Declared inside a function and accessible only within that function.
- **Global Variables**: Declared outside functions and accessible throughout the program.

Example:
```dart
int globalVar = 100; // Global Variable

void showNumber() {
  int localVar = 50; // Local Variable
  print(localVar);
}
```

## Conclusion
Functions in Dart provide modularity and reusability in code. Understanding function structures, return types, and scope will help in writing efficient Dart programs.

