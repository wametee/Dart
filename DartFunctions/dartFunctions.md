# Dart Programming: Functions

## Introduction
Functions in Dart play a crucial role in structuring code efficiently. They help in code reuse, improve readability, and enhance maintainability. Dart provides various types of functions, including default parameters, optional parameters, higher-order functions, recursion, and more. This document will explore these function types in-depth.

---

## 1. Function Types in Dart
Dart supports different types of functions:
- **Named Functions** (Regular functions)
- **Anonymous Functions (Lambda Expressions)**
- **Higher-Order Functions (HOF)**
- **Recursive Functions**
- **Where Function**
- **Map Function**
- **Typedef Functions**

### Example of a Named Function
```dart
void greet() {
  print("Hello, Dart!");
}

greet(); // Calls the function
```

---

## 2. Default Parameters in Dart
Dart allows default values for function parameters if no arguments are provided.

```dart
void printInfo(String name, [String country = "Unknown"]) {
  print("Name: $name, Country: $country");
}

printInfo("John"); // Output: Name: John, Country: Unknown
printInfo("Alice", "USA"); // Output: Name: Alice, Country: USA
```

---

## 3. Optional Parameters
Dart provides optional parameters which can be positional or named.

### Optional Positional Parameters
```dart
void displayInfo(String name, [int? age]) {
  print("Name: $name, Age: ${age ?? 'Not provided'}");
}

displayInfo("John"); // Output: Name: John, Age: Not provided
```

### Named Optional Parameters
```dart
void showDetails({String? name, int? age}) {
  print("Name: ${name ?? 'Not provided'}, Age: ${age ?? 'Not provided'}");
}

showDetails(name: "Alice", age: 25);
```

---

## 4. Passing an Array (List) Through Functions
Arrays (lists) can be passed as parameters in Dart functions.

```dart
void printList(List<int> numbers) {
  for (var num in numbers) {
    print(num);
  }
}

printList([1, 2, 3, 4, 5]);
```

---

## 5. Recursion in Dart
A function calling itself is called recursion. It is useful in problems like factorial and Fibonacci series.

```dart
int factorial(int n) {
  if (n <= 1) return 1;
  return n * factorial(n - 1);
}

print(factorial(5)); // Output: 120
```

---

## 6. Handling Exceptions in Functions
Dart uses try-catch blocks to handle exceptions in functions.

```dart
void divide(int a, int b) {
  try {
    print(a ~/ b); // Integer division
  } catch (e) {
    print("Error: Cannot divide by zero");
  }
}

divide(10, 0);
```

---

## 7. Lambda Expressions (Anonymous Functions)
Lambda expressions (or arrow functions) provide a shorter syntax for simple functions.

```dart
var add = (int a, int b) => a + b;
print(add(4, 5)); // Output: 9
```

---

## 8. Higher-Order Functions (HOF)
A higher-order function is a function that takes another function as a parameter or returns a function.

```dart
void execute(Function operation) {
  operation();
}

void hello() {
  print("Hello from HOF!");
}

execute(hello);
```

---

## 9. Where Function
The `where` function filters elements based on a condition.

```dart
List<int> numbers = [1, 2, 3, 4, 5, 6];
var evens = numbers.where((num) => num % 2 == 0);
print(evens.toList()); // Output: [2, 4, 6]
```

---

## 10. Map Function
The `map` function is used to transform each element in a collection.

```dart
List<int> numbers = [1, 2, 3];
var squaredNumbers = numbers.map((num) => num * num);
print(squaredNumbers.toList()); // Output: [1, 4, 9]
```

---

## 11. Typedef in Dart
A `typedef` defines a function signature, making code more readable and structured.

```dart
typedef MathOperation = int Function(int, int);

int add(int a, int b) => a + b;

void calculate(MathOperation operation) {
  print(operation(3, 5));
}

calculate(add); // Output: 8
```

---

## Conclusion
Dart functions provide flexibility through default parameters, optional parameters, recursion, higher-order functions, and more. Mastering these concepts enhances code reusability and maintainability.