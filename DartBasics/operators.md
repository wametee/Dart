# Operators in Dart

## 1. Arithmetic Operators
Arithmetic operators are used to perform mathematical operations on numbers.

| Operator | Description               | Example    |
|----------|---------------------------|------------|
| `+`      | Addition                  | `a + b`    |
| `-`      | Subtraction               | `a - b`    |
| `*`      | Multiplication            | `a * b`    |
| `/`      | Division                  | `a / b`    |
| `~/`     | Integer Division          | `a ~/ b`   |
| `%`      | Modulus (Remainder)       | `a % b`    |

## 2. Equality and Relational Operators
Equality and relational operators are used to compare two values.

| Operator | Description            | Example  |
|----------|------------------------|----------|
| `==`     | Equal to               | `a == b` |
| `!=`     | Not equal to           | `a != b` |
| `>`      | Greater than           | `a > b`  |
| `<`      | Less than              | `a < b`  |
| `>=`     | Greater than or equal  | `a >= b` |
| `<=`     | Less than or equal     | `a <= b` |

## 3. Type Test Operators
Type test operators are used to check the type of an object.

| Operator | Description        | Example    |
|----------|--------------------|------------|
| `is`     | Checks type        | `a is int` |
| `is!`    | Checks not type    | `a is! int`|

## 4. Bitwise Operators
Bitwise operators are used to perform bit-level operations on integers.

| Operator | Description               | Example  |
|----------|---------------------------|----------|
| `&`      | Bitwise AND               | `a & b`  |
| `|`      | Bitwise OR                | `a | b`  |
| `^`      | Bitwise XOR               | `a ^ b`  |
| `~`      | Bitwise NOT               | `~a`     |
| `<<`     | Left shift                | `a << b` |
| `>>`     | Right shift               | `a >> b` |

## 5. Assignment Operators
Assignment operators are used to assign values to variables.

| Operator  | Description                               | Example    |
|-----------|-------------------------------------------|------------|
| `=`       | Assignment                                | `a = b`    |
| `+=`      | Add and assign                            | `a += b`   |
| `-=`      | Subtract and assign                       | `a -= b`   |
| `*=`      | Multiply and assign                       | `a *= b`   |
| `/=`      | Divide and assign                         | `a /= b`   |
| `~/=`     | Integer divide and assign                 | `a ~/= b`  |
| `%=`      | Modulus and assign                        | `a %= b`   |
| `&=`      | Bitwise AND and assign                    | `a &= b`   |
| `|=`      | Bitwise OR and assign                     | `a |= b`   |
| `^=`      | Bitwise XOR and assign                    | `a ^= b`   |
| `<<=`     | Left shift and assign                     | `a <<= b`  |
| `>>=`     | Right shift and assign                    | `a >>= b`  |

## 6. Logical Operators
Logical operators are used to combine multiple boolean expressions.

| Operator | Description     | Example       |
|----------|-----------------|---------------|
| `&&`     | Logical AND     | `a && b`      |
| `||`     | Logical OR      | `a || b`      |
| `!`      | Logical NOT     | `!a`          |

## 7. Conditional (Ternary) Operator
The conditional operator is used to evaluate a condition and return a value based on the condition.

| Operator | Description                  | Example       |
|----------|------------------------------|---------------|
| `?:`     | Conditional (ternary)        | `a ? b : c`   |

## 8. Cascade Notation
Cascade notation allows you to make a sequence of operations on the same object.

| Operator | Description                  | Example       |
|----------|------------------------------|---------------|
| `..`     | Cascade notation             | `object..method1()..method2()` |

## 9. Null-aware Operators
Null-aware operators are used to handle null values.

| Operator | Description                                 | Example      |
|----------|---------------------------------------------|--------------|
| `??`     | If-null operator                            | `a ?? b`     |
| `??=`    | If-null assignment operator                 | `a ??= b`    |
| `?.`     | Null-aware member access operator           | `a?.b`       |
| `?..`    | Null-aware cascade operator                 | `a?..method()`|

## 10. Other Operators
| Operator | Description                | Example    |
|----------|----------------------------|------------|
| `()`     | Function call              | `func()`   |
| `[]`     | Indexing                   | `list[0]`  |
| `.`      | Member access              | `object.property` |
| `?.`     | Null-aware member access   | `object?.property` |

## Examples

### Arithmetic Operators
```dart
void main() {
  int a = 10;
  int b = 5;

  print(a + b); // 15
  print(a - b); // 5
  print(a * b); // 50
  print(a / b); // 2.0
  print(a ~/ b); // 2
  print(a % b); // 0
}
```

### Equality and Relational Operators
```dart
void main() {
  int a = 10;
  int b = 5;

  print(a == b); // false
  print(a != b); // true
  print(a > b); // true
  print(a < b); // false
  print(a >= b); // true
  print(a <= b); // false
}
```

### Type Test Operators
```dart
void main() {
  int a = 10;

  print(a is int); // true
  print(a is! int); // false
}
```

### Assignment Operators
```dart
void main() {
  int a = 10;
  int b = 5;

  a += b;
  print(a); // 15

  a -= b;
  print(a); // 10

  a *= b;
  print(a); // 50

  a ~/= b;
  print(a); // 10

  a %= b;
  print(a); // 0
}
```

### Logical Operators
```dart
void main() {
  bool a = true;
  bool b = false;

  print(a && b); // false
  print(a || b); // true
  print(!a); // false
}
```

### Conditional (Ternary) Operator
```dart
void main() {
  int a = 10;
  int b = 5;

  var result = a > b ? "a is greater" : "b is greater";
  print(result); // a is greater
}
```

### Cascade Notation
```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void setName(String name) {
    this.name = name;
  }

  void setAge(int age) {
    this.age = age;
  }
}

void main() {
  var person = Person("John", 25)
    ..setName("Alice")
    ..setAge(30);

  print("Name: ${person.name}, Age: ${person.age}"); // Name: Alice, Age: 30
}
```

### Null-aware Operators
```dart
void main() {
  String? name;
  String defaultName = "Guest";

  print(name ?? defaultName); // Guest

  name ??= defaultName;
  print(name); // Guest

  List<int>? numbers;
  print(numbers?.length); // null

  numbers = [1, 2, 3];
  print(numbers?.length); // 3
}
```