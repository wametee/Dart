void main() {
  // Loop from 1 to 5
  for (var x = 1; x <= 5; x++) {
    // Skip the iteration when x is 5
    if (x == 5) continue;
    // Print the value of x
    print('x = $x');
  }

  // Label the outer loop as 'loop1'
loop1:
  for (var i = 1; i <= 5; i++) {
    for (var j = 1; j <= 5; j++) {
      // Break out of the outer loop when i is 5
      if (i == 5) break loop1;
      // Print the multiplication of i and j
      print('$i * $j = ${i * j}');
    }
  }
}