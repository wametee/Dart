# Dart Exceptions - Handling Errors Gracefully

In Dart, **exceptions** are errors that occur during program execution. Proper handling prevents crashes and improves user experience.

---

## 1. What is an Exception?
An **exception** is an error that **interrupts normal program flow**.

Example:
```dart
void main() {
  int x = 10;
  int y = 0;
  print(x ~/ y); // Throws an exception (Division by zero)
}
```
🔹 **Error:** `Unhandled exception: IntegerDivisionByZeroException`

---

## 2. Using `try-catch` to Handle Exceptions
Use `try-catch` to handle errors and prevent crashes.

```dart
void main() {
  try {
    int result = 10 ~/ 0;
    print(result);
  } catch (e) {
    print("An error occurred: \$e");
  }
}
```
🔹 **Output:** `An error occurred: IntegerDivisionByZeroException`

---

## 3. Using `on` to Catch Specific Exceptions
Use `on` to handle **specific exceptions**.

```dart
void main() {
  try {
    List<int> numbers = [1, 2, 3];
    print(numbers[5]); // Index out of range
  } on RangeError {
    print("Index out of bounds!");
  }
}
```
🔹 **Output:** `Index out of bounds!`

---

## 4. Using `finally` for Cleanup
The `finally` block **always runs**, whether an exception occurs or not.

```dart
void main() {
  try {
    int result = 10 ~/ 0;
    print(result);
  } catch (e) {
    print("Error: \$e");
  } finally {
    print("Execution completed.");
  }
}
```
🔹 **Output:**
```
Error: IntegerDivisionByZeroException
Execution completed.
```

---

## 5. Throwing Custom Exceptions
You can **throw your own exceptions** for better error handling.

```dart
class AgeException implements Exception {
  String errorMessage() => "Age must be 18 or older.";
}

void checkAge(int age) {
  if (age < 18) {
    throw AgeException();
  } else {
    print("Access granted!");
  }
}

void main() {
  try {
    checkAge(16);
  } catch (e) {
    print(e.errorMessage());
  }
}
```
🔹 **Output:** `Age must be 18 or older.`

---

## 6. Common Dart Exceptions

| Exception Type | Description |
|---------------|-------------|
| `IntegerDivisionByZeroException` | Division by zero error |
| `FormatException` | Invalid format (e.g., parsing a non-number) |
| `RangeError` | Index out of range |
| `ArgumentError` | Invalid function argument |
| `StateError` | Invalid object state |
| `TimeoutException` | Operation timeout |

---

## Summary
- **Exceptions** are errors that stop normal program execution.
- Use **`try-catch`** to catch and handle errors.
- Use **`on`** for specific exception types.
- Use **`finally`** for cleanup code.
- **Throw custom exceptions** for better error management.

---

### 🚀 Handle exceptions properly to build robust Dart applications!

