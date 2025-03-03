# Dart: Methods vs. Properties & Common Methods

Dart provides **methods** and **properties** to manipulate data types like numbers and strings. Understanding the difference and usage of these concepts is crucial for efficient programming.

---

## 1. Methods vs. Properties

| Feature  | Methods | Properties |
|----------|---------|-----------|
| Definition | A function associated with an object that performs an action. | A variable-like attribute that holds a value. |
| Usage | Requires parentheses `()` | Accessed without parentheses `()` |
| Example | `x.abs()` | `x.isNegative` |
| Can take arguments? | ✅ Yes | ❌ No |
| Can perform operations? | ✅ Yes | ❌ No |

**Example:**
```dart
void main() {
  int x = -5;
  print(x.abs()); // Method -> Output: 5
  print(x.isNegative); // Property -> Output: true
}
```
---

## 2. Number Methods
Dart provides several useful methods for numbers.

| Method | Description | Example |
|--------|-------------|---------|
| `abs()` | Returns absolute value | `(-5).abs() // 5` |
| `ceil()` | Rounds up to the nearest integer | `3.2.ceil() // 4` |
| `floor()` | Rounds down to the nearest integer | `3.9.floor() // 3` |
| `round()` | Rounds to the nearest integer | `3.5.round() // 4` |
| `toDouble()` | Converts to double | `5.toDouble() // 5.0` |
| `toInt()` | Converts to int | `5.8.toInt() // 5` |

**Example:**
```dart
void main() {
  double num = 4.7;
  print(num.floor()); // Output: 4
  print(num.round()); // Output: 5
}
```

---

## 3. String Methods
Strings in Dart come with many built-in methods to manipulate text.

| Method | Description | Example |
|--------|-------------|---------|
| `toUpperCase()` | Converts to uppercase | `'hello'.toUpperCase() // 'HELLO'` |
| `toLowerCase()` | Converts to lowercase | `'HELLO'.toLowerCase() // 'hello'` |
| `trim()` | Removes whitespace from both ends | `'  hello  '.trim() // 'hello'` |
| `split()` | Splits a string into a list | `'hello world'.split(' ') // ['hello', 'world']` |
| `replaceAll()` | Replaces occurrences of a substring | `'abc abc'.replaceAll('a', 'x') // 'xbc xbc'` |
| `contains()` | Checks if string contains a substring | `'hello'.contains('he') // true` |
| `substring()` | Extracts a part of the string | `'hello'.substring(1, 3) // 'el'` |

**Example:**
```dart
void main() {
  String text = " Dart is fun! ";
  print(text.trim()); // Output: "Dart is fun!"
  print(text.toUpperCase()); // Output: " DART IS FUN! "
}
```

---

## Summary
- **Methods** perform actions and require `()`.
- **Properties** store values and do not need `()`.
- Dart provides various **number** and **string** methods to manipulate data efficiently.

---

### 🚀 Mastering Dart methods and properties enhances your coding efficiency!

