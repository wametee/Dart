# Null Safety and `required` in Dart

## Overview
Dart introduced **null safety** to eliminate null reference errors and improve code reliability. The **`required`** keyword ensures that necessary parameters are provided in function or constructor calls. This README explains these concepts with examples.

---

## 1. Null Safety in Dart

### What is Null Safety?
Null safety helps prevent `null` reference errors by ensuring variables cannot hold `null` unless explicitly declared nullable.

### Key Concepts

#### 1. Non-Nullable and Nullable Types
- By default, variables in Dart **cannot** be `null`.
- Use `?` to explicitly allow null values.

```dart
String name = "John";  // Non-nullable
String? nullableName;   // Nullable, can be null
```

#### 2. Null Assertion (`!`)
- Use `!` to **assert** that a nullable value is non-null.
- **Be careful** as it can throw runtime exceptions if the value is actually null.

```dart
String? nullableString;
print(nullableString!.length); // ⚠️ Throws an error if null!
```

#### 3. Null Coalescing (`??`)
- Provides a default value if the variable is null.

```dart
String? userName;
print(userName ?? "Guest"); // Prints 'Guest' if userName is null
```

#### 4. Null-aware Cascade (`?..`)
- Used when calling methods on nullable objects.

```dart
class User {
  void greet() => print("Hello!");
}

User? user;
user?..greet(); // No error, does nothing if user is null
```

---

## 2. `required` Keyword in Dart

### What is `required`?
The `required` keyword ensures that a **named parameter** is provided in functions or constructors.

### Usage in Constructors
```dart
class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});
}

void main() {
  var person = Person(name: "Alice", age: 30); // ✅ Works
  // var person2 = Person(name: "Bob"); // ❌ Error: missing required parameter
}
```

### Usage in Functions
```dart
void printDetails({required String name, required int age}) {
  print("Name: $name, Age: $age");
}

void main() {
  printDetails(name: "John", age: 25); // ✅ Works
  // printDetails(name: "Emma"); // ❌ Error: missing 'age' parameter
}
```

---

## 3. Best Practices
✔️ **Always prefer non-nullable types unless null is a valid state.**  
✔️ **Use `??` or `!` carefully to handle nullable values.**  
✔️ **Use `required` to enforce essential parameters in named arguments.**  

---

## Conclusion
Dart's **null safety** and **`required`** keyword make code safer, reducing the risk of null reference errors. Implement these practices to write more reliable and maintainable Dart applications!

Happy Coding! 🚀

