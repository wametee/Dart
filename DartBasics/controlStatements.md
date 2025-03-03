# Control Statements in Dart

Control statements are fundamental constructs that control the flow of execution in a program. Dart supports various control statements, including conditional statements, looping statements, and branching statements. This guide will cover the basics of these control statements in Dart.

## Conditional Statements

Conditional statements allow you to make decisions in your code based on certain conditions. Dart provides the following conditional statements:

### `if` Statement

The `if` statement executes a block of code if a specified condition is `true`.

```dart
void main() {
  int number = 10;

  if (number > 0) {
    print('The number is positive.');
  }
}
```

### `if-else` Statement

The `if-else` statement executes one block of code if a specified condition is `true`, and another block of code if the condition is `false`.

```dart
void main() {
  int number = -10;

  if (number > 0) {
    print('The number is positive.');
  } else {
    print('The number is negative.');
  }
}
```

### `if-else if-else` Statement

The `if-else if-else` statement allows you to check multiple conditions and execute different blocks of code based on which condition is `true`.

```dart
void main() {
  int number = 0;

  if (number > 0) {
    print('The number is positive.');
  } else if (number < 0) {
    print('The number is negative.');
  } else {
    print('The number is zero.');
  }
}
```

### `switch` Statement

The `switch` statement allows you to execute one block of code out of many based on the value of an expression.

```dart
void main() {
  int number = 2;

  switch (number) {
    case 1:
      print('One');
      break;
    case 2:
      print('Two');
      break;
    case 3:
      print('Three');
      break;
    default:
      print('Other number');
  }
}
```

## Looping Statements

Looping statements allow you to execute a block of code multiple times. Dart provides the following looping statements:

### `for` Loop

The `for` loop is used when you know in advance how many times you want to execute a statement or a block of statements.

```dart
void main() {
  for (int i = 1; i <= 5; i++) {
    print(i);
  }
}
```

### `for-in` Loop

The `for-in` loop is used to iterate over the elements of a collection (like a list or a set).

```dart
void main() {
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];

  for (String fruit in fruits) {
    print(fruit);
  }
}
```

### `while` Loop

The `while` loop is used to execute a block of code as long as a given condition is true.

```dart
void main() {
  int count = 1;

  while (count <= 5) {
    print(count);
    count++;
  }
}
```

### `do-while` Loop

The `do-while` loop is similar to the `while` loop, but the condition is checked after the execution of the loop's body.

```dart
void main() {
  int count = 1;

  do {
    print(count);
    count++;
  } while (count <= 5);
}
```

### Nested Loops

Nested loops are loops within loops. They are used when you need to perform repeated actions within other repeated actions.

```dart
void main() {
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      print('$i, $j');
    }
  }
}
```

## Branching Statements

Branching statements allow you to alter the flow of execution in your program. Dart provides the following branching statements:

### `break` Statement

The `break` statement is used to exit a loop or a switch statement.

```dart
void main() {
  for (int i = 1; i <= 5; i++) {
    if (i == 3) {
      break;
    }
    print(i);
  }
}
```

### `continue` Statement

The `continue` statement skips the current iteration of a loop and proceeds to the next iteration.

```dart
void main() {
  for (int i = 1; i <= 5; i++) {
    if (i == 3) {
      continue;
    }
    print(i);
  }
}
```

## Conclusion

Control statements are essential for directing the flow of execution in your Dart programs. By understanding and using these statements effectively, you can write more efficient and readable code. This guide covered the basics of conditional statements, looping statements, and branching statements in Dart.