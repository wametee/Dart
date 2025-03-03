# Dart Iterables - Lists & Sets Explained Simply

An **iterable** in Dart is a **collection of items that can be looped through** (like lists and sets). It represents a sequence of values.

---

## 1. What is an Iterable?
An iterable is **a collection** (e.g., `List` or `Set`) that you can go through **one item at a time** using a loop.

```dart
void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  print(numbers); // Output: [1, 2, 3, 4, 5]
}
```

---

## 2. Checking if Something is Iterable
All lists and sets are iterables because they extend the `Iterable` class.

```dart
void main() {
  List<String> names = ["Alice", "Bob", "Charlie"];
  print(names is Iterable); // Output: true
}
```

---

## 3. Looping Through an Iterable

### Method 1: Using `for` Loop
```dart
void main() {
  List<int> numbers = [10, 20, 30];

  for (int num in numbers) {
    print(num);
  }
}
```
🔹 **Output:**  
```
10
20
30
```

---

### Method 2: Using `forEach()`
```dart
void main() {
  List<String> fruits = ["Apple", "Banana", "Mango"];

  fruits.forEach((fruit) {
    print(fruit);
  });
}
```
🔹 **Output:**  
```
Apple
Banana
Mango
```

---

## 4. Common Iterable Methods

| Method | Description | Example |
|--------|------------|---------|
| `length` | Gets number of items | `list.length` |
| `first` | Gets first item | `list.first` |
| `last` | Gets last item | `list.last` |
| `isEmpty` | Checks if empty | `list.isEmpty` |
| `isNotEmpty` | Checks if not empty | `list.isNotEmpty` |
| `where()` | Filters items | `list.where((x) => x > 5)` |
| `map()` | Transforms items | `list.map((x) => x * 2)` |
| `toList()` | Converts to list | `iterable.toList()` |
| `toSet()` | Converts to set | `iterable.toSet()` |

---

## 5. Using `where()` to Filter Items
The `where()` method filters elements that match a condition.

```dart
void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6];

  var evenNumbers = numbers.where((n) => n.isEven);
  print(evenNumbers.toList()); // Output: [2, 4, 6]
}
```

---

## 6. Using `map()` to Transform Items
The `map()` method **modifies each item** in an iterable.

```dart
void main() {
  List<int> numbers = [1, 2, 3];

  var doubled = numbers.map((n) => n * 2);
  print(doubled.toList()); // Output: [2, 4, 6]
}
```

---

## 7. Converting an Iterable to a List or Set
Since `where()` and `map()` return an **Iterable**, use `.toList()` or `.toSet()` if needed.

```dart
void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  
  var squaredNumbers = numbers.map((n) => n * n).toList();
  print(squaredNumbers); // Output: [1, 4, 9, 16, 25]
}
```

---

## 8. Using `expand()` to Flatten Iterables
If you have **nested lists**, use `expand()` to flatten them.

```dart
void main() {
  List<List<int>> nested = [[1, 2], [3, 4]];

  var flatList = nested.expand((x) => x).toList();
  print(flatList); // Output: [1, 2, 3, 4]
}
```

---

## Summary
- **Iterables** allow looping through collections like `List` and `Set`.
- Use **`for` loop** or **`forEach()`** to iterate.
- Use **`map()`** to modify items.
- Use **`where()`** to filter items.
- Convert an **Iterable** to a **List** or **Set** using `toList()` or `toSet()`.
- Use **`expand()`** to flatten nested lists.

---

### 📌 Happy Coding! 🚀

