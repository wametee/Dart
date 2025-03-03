import 'dart:io';


//  nested while loops to print a pattern of stars:


void main() {
  int rows = 5;
  int i = 1;

  // Outer loop for rows
  while (i <= rows) {
    int j = 1;

    // Inner loop for columns
    while (j <= i) {
      // Print star
      stdout.write('*');
      j++;
    }
    // Print a new line after each row
    print('');
    i++;
  }
}