void main() {
  int a = 10;
  int b = 20;

  // condition ? expression1 : expression2;
  /*
    condition: This is a boolean expression that evaluates to either true or false.
    expression1: This is the value that will be returned if the condition is true.
    expression2: This is the value that will be returned if the condition is false.
    */
  // Using the conditional operator to find the maximum value
  int max = (a > b) ? a : b;

  print("The maximum value is $max"); // Output: The maximum value is 20
  String username = "admin";
  String greeting = (username == "admin") ? "Welcome, admin!" : "Welcome, user!";

  print(greeting); // Output: Welcome, admin!
}