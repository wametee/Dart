import 'dart:io';

void main() {
  List<List<int>> matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];

  // Outer loop for rows
  for (List<int> row in matrix) {
    // Inner loop for columns
    for (int value in row) {
      stdout.write('$value ');
      // Print value
      stdout.write('$value ');
    }
    // Print a new line after each row
    print('');
  }
}