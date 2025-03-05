# Object-Oriented Programming (OOP) in Dart

## Table of Contents

1. [Introduction to Object-Oriented Programming (OOP)](#introduction-to-object-oriented-programming-oop)
2. [Object and Class](#object-and-class)
3. [Creating a Class](#creating-a-class)
4. [Adding Methods to Classes](#adding-methods-to-classes)
5. [Providing Constructors for Your Classes](#providing-constructors-for-your-classes)
6. [Class - Getters and Setters](#class---getters-and-setters)
7. [Class Inheritance](#class-inheritance)
8. [Abstract Class](#abstract-class)
9. [Dart Project Structure](#dart-project-structure)
10. [Dart Libraries](#dart-libraries)

## Introduction to Object-Oriented Programming (OOP)

Object-Oriented Programming (OOP) is a programming paradigm based on the concept of "objects," which can contain data and methods. OOP aims to implement real-world entities like inheritance, polymorphism, encapsulation, and abstraction in programming. The main principles of OOP are:

- **Encapsulation:** Bundling the data (variables) and methods (functions) that operate on the data into a single unit called a class.
- **Abstraction:** Hiding the complex implementation details and showing only the necessary features of the object.
- **Inheritance:** Creating a new class from an existing class to promote code reusability.
- **Polymorphism:** Allowing objects to be treated as instances of their parent class rather than their actual class.

## Object and Class

- **Class:** A blueprint for creating objects. It defines a datatype by bundling data and methods that work on the data into one single unit.
- **Object:** An instance of a class. It is a basic unit of Object-Oriented Programming and represents real-life entities.

## Creating a Class

In Dart, a class is created using the `class` keyword followed by the class name.

```dart
class Animal {
  String name;
  int age;

  // Constructor
  Animal(this.name, this.age);

  // Method to display animal details
  void display() {
    print('Name: $name, Age: $age');
  }
}
```

## Adding Methods to Classes

Methods are functions defined within a class that operate on the instances of the class.

```dart
class Animal {
  String name;
  int age;

  // Constructor
  Animal(this.name, this.age);

  // Method to display animal details
  void display() {
    print('Name: $name, Age: $age');
  }

  // Method to make the animal speak
  void speak() {
    print('$name makes a sound.');
  }
}
```

## Providing Constructors for Your Classes

Constructors are special methods used for initializing objects. Dart provides a default constructor, but you can define your own constructors.

```dart
class Animal {
  String name;
  int age;

  // Default constructor
  Animal(this.name, this.age);

  // Named constructor
  Animal.named(String name) {
    this.name = name;
    this.age = 0;
  }

  // Method to display animal details
  void display() {
    print('Name: $name, Age: $age');
  }
}
```

## Class - Getters and Setters

Getters and setters are used to access and update the properties of an object.

```dart
class Animal {
  String _name;
  int _age;

  // Constructor
  Animal(this._name, this._age);

  // Getter for name
  String get name => _name;

  // Setter for name
  set name(String name) {
    _name = name;
  }

  // Getter for age
  int get age => _age;

  // Setter for age
  set age(int age) {
    _age = age;
  }

  // Method to display animal details
  void display() {
    print('Name: $name, Age: $age');
  }
}
```

## Class Inheritance

Inheritance allows a class to inherit properties and methods from another class.

```dart
class Animal {
  String name;
  int age;

  // Constructor
  Animal(this.name, this.age);

  // Method to display animal details
  void display() {
    print('Name: $name, Age: $age');
  }
}

// Dog class inherits from Animal class
class Dog extends Animal {
  String breed;

  // Constructor
  Dog(String name, int age, this.breed) : super(name, age);

  // Method to display dog details
  void display() {
    super.display();
    print('Breed: $breed');
  }
}
```

## Abstract Class

An abstract class is a class that cannot be instantiated. It is used as a base class for other classes.

```dart
abstract class Animal {
  String name;
  int age;

  // Constructor
  Animal(this.name, this.age);

  // Abstract method
  void speak();

  // Method to display animal details
  void display() {
    print('Name: $name, Age: $age');
  }
}

// Dog class inherits from Animal class
class Dog extends Animal {
  String breed;

  // Constructor
  Dog(String name, int age, this.breed) : super(name, age);

  // Implementing the abstract method
  @override
  void speak() {
    print('$name barks.');
  }

  // Method to display dog details
  @override
  void display() {
    super.display();
    print('Breed: $breed');
  }
}
```

## Dart Project Structure

A typical Dart project structure includes the following directories and files:

```
my_project/
├── bin/
│   └── main.dart
├── lib/
│   └── my_project.dart
├── test/
│   └── my_project_test.dart
├── pubspec.yaml
└── README.md
```

- `bin/`: Contains the entry point of the application.
- `lib/`: Contains the library code.
- `test/`: Contains the test code.
- `pubspec.yaml`: Contains the metadata for the project, including dependencies.

## Dart Libraries

Dart libraries are a set of reusable modules that can be imported into your project. Dart has a rich set of core libraries and also supports third-party libraries.

### Importing Libraries

You can import libraries using the `import` keyword.

```dart
import 'dart:math'; // Importing core library
import 'package:http/http.dart' as http; // Importing third-party library
import 'my_project.dart'; // Importing local library
```

### Core Libraries

Some commonly used core libraries in Dart:

- `dart:core`: Contains fundamental classes and functions.
- `dart:async`: Support for asynchronous programming.
- `dart:convert`: Support for converting between different data representations.
- `dart:io`: Support for file, socket, HTTP, and other I/O operations.
- `dart:math`: Mathematical constants and functions, plus a random number generator.

### Third-Party Libraries

You can find and add third-party libraries from the [Dart packages](https://pub.dev/) repository. Add the dependencies in your `pubspec.yaml` file.

```yaml
dependencies:
  http: ^0.13.3
  json_annotation: ^4.3.0
```

### Creating Your Own Library

To create your own library, use the `library` keyword and export the necessary files.

```dart
// my_project.dart
library my_project;

export 'src/my_project_base.dart';
```

Use the `part` and `part of` directives to split a library into multiple files.

```dart
// src/my_project_base.dart
part of my_project;

class MyClass {
  void doSomething() {
    print('Doing something');
  }
}
```

## Conclusion

This README provides an in-depth discussion of Object-Oriented Programming (OOP) concepts in Dart, including objects, classes, methods, constructors, getters and setters, inheritance, abstract classes, Dart project structure, and Dart libraries. Understanding these concepts will help you write better and more organized code in Dart.
