// Write a program to demonstrate the use of switch case in Dart.

void main() {
  var x = 5;
  var y = 3;
  var operator = '+';

  switch(operator){
    case '+':
      print('x + y = ${x + y}');
      break;
    case '-':
      print('x - y = ${x - y}');
      break;
    case '*':
      print('x * y = ${x * y}');
      break;
    case '/':
      print('x / y = ${x / y}');
      break;
    default:
      print('Invalid operator');
  }
}
// void main() {
//   var grade = 'A';
//   switch (grade) {
//     case 'A':
//       print('Excellent performance');
//       break;
//     case 'B':
//       print('Very good performance');
//       break;
//     case 'C':
//       print('Good performance');
//       break;
//     case 'D':
//       print('Average performance');
//       break;
//     case 'F':   
//       print('Poor performance');
//       break;
//     default:
//       print('Invalid grade');
//   }
// }
