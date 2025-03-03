import 'dart:io';

void main(){
  while (true){
    try{
      print("Enter the first number: ");
      String? firstInput = stdin.readLineSync();
      if (firstInput == null) {
      String? secondInput = stdin.readLineSync();
      if (secondInput == null) {
        print("Invalid input. Please enter a valid number.");
        continue;
      }
      int.parse(secondInput);
        continue;
      }
      int firstNumber = int.parse(firstInput);
      print("Enter the second number: ");
      String? secondInput = stdin.readLineSync();
      if (secondInput == null) {
        print("Invalid input. Please enter a valid number.");
        continue;
      }
      int secondNumber = int.parse(secondInput);

      int result = firstNumber ~/ secondNumber;
      print("The result is $result");
      break;
    } catch (e){
      print("An error occurred: $e");
    }
  }
}

// void main(){
//   try{
//     int result = 10 ~/ 0;
//     print("The result is $result");

//   } catch (e){
//     print("An error occurred: $e");
//   }
// }