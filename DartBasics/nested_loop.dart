void main() {
  // Outer loop for rows
  for (int i = 1; i <= 5; i++) {
    // Inner loop for columns
    for (int j = 1; j <= 5; j++) {
      // Print multiplication result
      int product = i * j;
      print('$i * $j = $product');
    }
    // Print a new line after each row
    print('');
  }
}