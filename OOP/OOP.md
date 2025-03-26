# Dart Object-Oriented Programming (OOP)

## Introduction
Dart is an object-oriented language with support for classes, objects, inheritance, polymorphism, and other advanced OOP concepts. This document explores OOP principles in Dart, including constructors, static members, inheritance, abstract classes, mixins, enums, generics, operator overloading, and more.

---

## 1. Class and Object
A **class** is a blueprint for creating objects, and an **object** is an instance of a class.

```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void display() {
    print("Name: $name, Age: $age");
  }
}

void main() {
  var p = Person("John", 30);
  p.display();
}
```

---

## 2. Constructor
A **constructor** initializes an object when it is created. Dart provides different types of constructors:

### Default Constructor
```dart
class Car {
  String brand;
  Car(this.brand);
}
```

### Named Constructor
```dart
class Car {
  String brand;
  Car.named(this.brand);
}
```

---

## 3. Static and `this`
### `static` Keyword
Static variables and methods belong to the class rather than an instance.

```dart
class Circle {
  static const double pi = 3.14;
}

void main() {
  print(Circle.pi); // Access without creating an instance
}
```

### `this` Keyword
`this` refers to the current instance.
```dart
class Animal {
  String name;
  Animal(this.name);
}
```

---

## 4. Getter and Setter
Dart allows custom getters and setters to control access to class properties.

```dart
class Person {
  String _name;

  String get name => _name;
  set name(String newName) => _name = newName;
}
```

---

## 5. Inheritance
Inheritance allows one class to inherit from another.

```dart
class Animal {
  void eat() => print("Eating...");
}

class Dog extends Animal {
  void bark() => print("Barking...");
}
```

---

## 6. `super` and Super Constructor
The `super` keyword is used to call the parent class's properties and methods.

```dart
class Parent {
  Parent() {
    print("Parent Constructor");
  }
}

class Child extends Parent {
  Child() : super();
}
```

---

## 7. Method Overriding
A subclass can override a method from its parent class using `@override`.

```dart
class Animal {
  void makeSound() => print("Some sound");
}

class Dog extends Animal {
  @override
  void makeSound() => print("Bark");
}
```

---

## 8. Abstract Classes
An abstract class cannot be instantiated and is used to define a blueprint for other classes.

```dart
abstract class Shape {
  void draw();
}

class Circle extends Shape {
  @override
  void draw() => print("Drawing Circle");
}
```

---

## 9. Mixins
Mixins allow code reuse in multiple classes.

```dart
mixin Fly {
  void fly() => print("Flying");
}

class Bird with Fly {}
```

---

## 10. `final` vs `const`
- `final` variables can only be assigned once.
- `const` variables are compile-time constants.

```dart
final String name = "John";
const double pi = 3.14;
```

---

## 11. Enum
Enums represent a fixed set of values.

```dart
enum Days { Monday, Tuesday, Wednesday }

void main() {
  print(Days.Monday);
}
```

---

## 12. Generics
Generics allow code reusability with different data types.

```dart
class Box<T> {
  T value;
  Box(this.value);
}
```

---

## 13. Math Library
Dart's `dart:math` provides mathematical functions.

```dart
import 'dart:math';

void main() {
  print(sqrt(16));
}
```

---

## 14. DateTime
Dart provides `DateTime` for working with dates and times.

```dart
void main() {
  DateTime now = DateTime.now();
  print(now);
}
```

---

## 15. Operator Overloading
Dart allows custom operators for classes.

```dart
class Point {
  int x, y;
  Point(this.x, this.y);

  Point operator +(Point other) => Point(x + other.x, y + other.y);
}
```

---

## 16. Polymorphism
Polymorphism allows different classes to share a common interface.

```dart
abstract class Animal {
  void makeSound();
}

class Cat implements Animal {
  @override
  void makeSound() => print("Meow");
}
```

---

## 17. Lexical Closure
Closures capture the scope in which they were created.

```dart
Function makeMultiplier(int multiplier) {
  return (int number) => number * multiplier;
}
```

---

## 18. Callable Class
A class can be made callable by implementing the `call` method.

```dart
class Add {
  int call(int a, int b) => a + b;
}

void main() {
  var add = Add();
  print(add(4, 5));
}
```

---

## 19. Extension Functions
Extensions add new functionality to existing classes without modifying them.

```dart
extension StringExtension on String {
  String capitalize() => this[0].toUpperCase() + substring(1);
}

void main() {
  print("hello".capitalize());
}
```

---

## Conclusion
Dart provides powerful OOP features that allow developers to write clean, maintainable, and scalable applications. By understanding these concepts, you can build robust applications with Dart.

