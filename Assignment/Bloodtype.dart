/* Blood Type Compatibility in Dart
Objective:
Write a Dart program that determines blood donation compatibility based on a person's blood type and Rh factor.

Instructions:
Create a Dart program using void main().

Declare two variables: String donorBloodType and String recipientBloodType.

Use if-else if statements to determine if the donor can donate to the recipient.

Consider blood type compatibility rules:

1. Type O- can donate to any blood type (universal donor).
2. Type O+ can donate to O+, A+, B+, AB+.
3. Type A- can donate to A-, A+, AB-, AB+.
4. Type A+ can donate to A+, AB+.
5. Type B- can donate to B-, B+, AB-, AB+.
6. Type B+ can donate to B+, AB+.
7. Type AB- can donate to AB- and AB+.
8. Type AB+ can only donate to AB+ (universal recipient).
9. Print whether the donation is possible or not.

Example Output:

Donor Blood Type: A-
Recipient Blood Type: AB+
Compatible: Yes, A- can donate to AB+.



Bonus Challenge:
Modify the program to accept user input for blood types.
Include an edge case where an invalid blood type is entered.


*/