# Dart Asynchronous Programming

## Overview
Dart is a single-threaded language but supports asynchronous programming using `Future`, `Stream`, and `async/await`. These concepts help in performing time-consuming operations like I/O, network requests, and file system interactions without blocking the main execution thread.

## 1. Futures
A `Future` represents a value that might be available in the future. It allows non-blocking operations to be performed asynchronously.

### Creating a Future
```dart
Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () => "Data received");
}
```

### Using a Future
```dart
void main() {
  fetchData().then((data) {
    print(data);
  }).catchError((error) {
    print("Error: $error");
  });
}
```

## 2. Async/Await
The `async` keyword allows a function to be asynchronous, and `await` pauses execution until the Future completes.

### Example
```dart
Future<void> fetchData() async {
  try {
    String data = await Future.delayed(Duration(seconds: 2), () => "Data loaded");
    print(data);
  } catch (e) {
    print("Error: $e");
  }
}

void main() async {
  await fetchData();
}
```

## 3. Streams
A `Stream` is used for handling multiple asynchronous data events over time. Unlike a `Future`, which returns a single value, a `Stream` can emit multiple values.

### Creating a Stream
```dart
Stream<int> countStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}
```

### Listening to a Stream
```dart
void main() {
  countStream().listen((value) {
    print("Received: $value");
  }, onDone: () {
    print("Stream closed");
  });
}
```

## 4. Installing Packages
Dart uses `pub.dev` as the package repository. You can install packages using `pubspec.yaml`.

### Steps:
1. Add dependency in `pubspec.yaml`:
```yaml
dependencies:
  http: ^0.13.4
```
2. Run the following command:
```sh
flutter pub get
```

## 5. Making API Calls
Using the `http` package, we can make API requests.

### Example
```dart
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> fetchUser() async {
  var url = Uri.parse("https://jsonplaceholder.typicode.com/users/1");
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    print("User: ${data['name']}");
  } else {
    print("Failed to fetch user");
  }
}

void main() async {
  await fetchUser();
}
```

## 6. File System Operations
Dart provides the `dart:io` library for file handling.

### Writing to a File
```dart
import 'dart:io';

Future<void> writeFile() async {
  File file = File('example.txt');
  await file.writeAsString("Hello, Dart!");
}

void main() async {
  await writeFile();
}
```

### Reading from a File
```dart
Future<void> readFile() async {
  File file = File('example.txt');
  if (await file.exists()) {
    String content = await file.readAsString();
    print("File Content: $content");
  } else {
    print("File does not exist");
  }
}

void main() async {
  await readFile();
}
```

## Conclusion
Dart's asynchronous programming model allows efficient execution of non-blocking tasks using `Future`, `Stream`, and `async/await`. Understanding these concepts is crucial for working with APIs, file systems, and real-time data streams.

