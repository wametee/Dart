# Dart Programming Guide

## 📖 Introduction
Dart is an **open-source**, **object-oriented**, and **general-purpose** programming language developed by **Google**. It is widely used for creating **mobile applications** using **Flutter**, as well as **web**, **desktop**, and **server-side** development.

### ✅ **Key Features:**
- Strongly typed language.
- Supports **Just-In-Time (JIT)** and **Ahead-Of-Time (AOT)** compilation.
- Object-oriented with classes and single inheritance.
- Functional and imperative programming paradigms.

---

## 🏁 Program Structure and `main()` Function
Every Dart program starts with the `main()` function.

```dart
void main() {
  print('Hello, Dart!');
}
```

### 💡 **Explanation:**
- `void` → Return type indicating no value is returned.
- `main()` → Entry point of every Dart program.
- `print()` → Built-in function for console output.

---

## 💾 Variables
Variables store data and can be **explicitly typed** or **type-inferred** using `var`.

### 🔹 **Example:**
```dart
void main() {
  var name = 'Isaac';       // Inferred as String
  int age = 25;             // Explicitly declared
  double height = 5.9;      // Floating-point number
  bool isDeveloper = true;  // Boolean value

  print('Name: $name, Age: $age');
}
```

### 🔸 **Variable Keywords:**
- `var` → Type inferred by Dart.
- `final` → Immutable after assignment.
- `const` → Compile-time constant.

```dart
final city = 'Nairobi';
const pi = 3.1415;
```

---

## 🗃️ Data Types
Dart supports the following **built-in data types**:

| **Data Type** | **Example**                |
|---------------|----------------------------|
| `int`        | `int age = 30;`            |
| `double`     | `double pi = 3.14;`        |
| `String`     | `String name = 'Isaac';`   |
| `bool`       | `bool isActive = true;`    |
| `List`       | `List<int> nums = [1, 2];` |
| `Map`        | `Map<String, int> scores = {'Math': 90};` |
| `Set`        | `Set<String> fruits = {'apple', 'banana'};` |
| `dynamic`    | `dynamic x = 10; x = 'hi';`|

### 📊 **Dart Data Types Explained**

1. **`int` (Integer)**  
   - Used for whole numbers without decimals.  
   - Example:  
     ```dart
     int age = 30; // Represents the number 30
     ```

2. **`double` (Floating-Point Number)**  
   - Represents real numbers with decimal points.  
   - Example:  
     ```dart
     double pi = 3.14; // Represents 3.14
     ```

3. **`String` (Textual Data)**  
   - A sequence of characters enclosed in single or double quotes.  
   - Example:  
     ```dart
     String name = 'Isaac'; // Represents the text "Isaac"
     ```

4. **`bool` (Boolean)**  
   - Represents two values: `true` or `false`.  
   - Example:  
     ```dart
     bool isActive = true; // Indicates an active state
     ```

5. **`List` (Ordered Collection - Array)**  
   - An ordered group of objects, known as an array in other languages.  
   - Example:  
     ```dart
     List<int> nums = [1, 2, 3]; // List of integers
     ```

6. **`Map` (Key-Value Pairs)**  
   - A collection of key-value pairs, like dictionaries in Python.  
   - Example:  
     ```dart
     Map<String, int> scores = {'Math': 90, 'English': 85};
     // "Math" is the key and 90 is the value
     ```

7. **`Set` (Unique Collection)**  
   - An unordered collection of unique items (no duplicates).  
   - Example:  
     ```dart
     Set<String> fruits = {'apple', 'banana', 'apple'};
     // Output: {'apple', 'banana'} — removes duplicates
     ```

8. **`dynamic` (Flexible Type)**  
   - Can hold any data type and can change types at runtime.  
   - Example:  
     ```dart
     dynamic x = 10; 
     x = 'Hello'; // Now holds a String
     ```

---

## ⌨️ Input Handling
Use the **`dart:io`** library for command-line input.

### 🔹 **Example:**
```dart
import 'dart:io';

void main() {
  print('Enter your name:');
  String? name = stdin.readLineSync();
  print('Hello, $name!');
}
```

### 🔸 **Explanation:**
- `import 'dart:io';` → Enables I/O operations.
- `stdin.readLineSync()` → Reads user input.
- `String?` → Nullable type to handle potential null input.

---

## 💬 Comments
Comments help explain the code and are ignored during execution.

### 🔹 **Types of Comments:**

1. **Single-line Comment:**
   ```dart
   // This is a single-line comment
   print('Hello, World!');
   ```

2. **Multi-line Comment:**
   ```dart
   /*
     This is a multi-line comment.
     It spans multiple lines.
   */
   print('Multi-line comment example');
   ```

3. **Documentation Comment:**
   ```dart
   /// This function adds two numbers.
   int add(int a, int b) => a + b;
   ```

---

## ⚖️ Conditional Operators
Control program flow based on conditions using conditional statements. Conditional operators in Dart help in making decisions based on certain conditions and control the flow of execution accordingly.

### ✅ **1. `if` Statement:**
The simplest form of conditional statement. It executes a block of code only if the specified condition is true.

```dart
void main() {
  int num = 10;

  if (num > 5) {
    print('Number is greater than 5');
  }
}
```

### ✅ **2. `if-else` Statement:**
Provides an alternative path of execution if the condition is false.

```dart
void main() {
  int age = 18;

  if (age >= 18) {
    print('You are an adult');
  } else {
    print('You are a minor');
  }
}
```

### ✅ **3. `if-else if-else` Ladder:**
Used for checking multiple conditions sequentially.

```dart
void main() {
  int score = 85;

  if (score >= 90) {
    print('Grade A');
  } else if (score >= 75) {
    print('Grade B');
  } else if (score >= 60) {
    print('Grade C');
  } else {
    print('Grade F');
  }
}
```

### ✅ **4. Ternary Operator:**
A shorthand method for simple conditional checks.

```dart
void main() {
  int age = 20;
  String result = (age >= 18) ? 'Adult' : 'Minor';
  print(result);
}
```

### 💡 **Additional Notes:**
- Always ensure conditions evaluate to a boolean (`true` or `false`).
- Combine multiple conditions using logical operators (`&&`, `||`, `!`).
- Nested `if` statements can be used for complex decision-making.

---

## 🏆 Conclusion
Dart provides a simple and powerful syntax for building robust applications. Mastering its variables, data types, control flows, and input handling is essential for building efficient applications.

🚀 **Next Steps:**
- Dive into Dart functions, classes, and OOP concepts.
- Explore Flutter for mobile app development.

Happy Coding! 💙

