
## If Statement

The `if` statement is used to execute a block of code only if a specified condition is true.

Example:
```dart
int number = 10;

if (number > 5) {
  print("Number is greater than 5");
}
```

## If-Else Statement

The `if-else` statement is used to execute one block of code if a condition is true and another block of code if the condition is false.

Example:
```dart
int number = 10;

if (number > 5) {
  print("Number is greater than 5");
} else {
  print("Number is not greater than 5");
}
```

## If...Else and Else...If Statement

The `if...else` and `else...if` statements are used to test multiple conditions in sequence.

Example:
```dart
int number = 10;

if (number > 10) {
  print("Number is greater than 10");
} else if (number == 10) {
  print("Number is equal to 10");
} else {
  print("Number is less than 10");
}
```

## If Else and Logical Operators

Logical operators can be combined with `if-else` statements to test multiple conditions.

Example:
```dart
int number = 10;

if (number > 5 && number < 15) {
  print("Number is between 5 and 15");
} else {
  print("Number is not between 5 and 15");
}
```

## For Loops

The `for` loop is used to execute a block of code a fixed number of times.

Example:
```dart
for (int i = 0; i < 5; i++) {
  print("Iteration $i");
}
```

## While Loops

The `while` loop is used to execute a block of code as long as a specified condition is true.

Example:
```dart
int i = 0;

while (i < 5) {
  print("Iteration $i");
  i++;
}
```

## Do-While Loops

The `do-while` loop is similar to the `while` loop, but it guarantees that the block of code is executed at least once.

Example:
```dart
int i = 0;

do {
  print("Iteration $i");
  i++;
} while (i < 5);
```

## Break Statement

The `break` statement is used to exit a loop or switch statement prematurely.

Example:
```dart
for (int i = 0; i < 10; i++) {
  if (i == 5) {
    break; // Exit the loop when i is equal to 5
  }
  print("Iteration $i");
}
```

## Switch Case Statement

The `switch` statement is used to execute one block of code among many based on the value of an expression.

Example:
```dart
String grade = 'A';

switch (grade) {
  case 'A':
    print("Excellent");
    break;
  case 'B':
    print("Good");
    break;
  case 'C':
    print("Average");
    break;
  case 'D':
    print("Poor");
    break;
  case 'F':
    print("Fail");
    break;
  default:
    print("Invalid grade");
}
```

---

This guide provides an overview of essential Dart programming concepts. For more detailed information, refer to the official [Dart documentation](https://dart.dev/guides).