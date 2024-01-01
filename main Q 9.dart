void main() {
  // Q9: Check if the number is even or odd, If number is even then check if this is
// divisible by 5 or not & if number is odd then check if this is divisible by 7 or not.

  int Number = 888;
  if (Number % 2 == 0) {
    print("Number is Even");
  }
  if (Number % 5 == 0) {
    print("$Number is not divisible by 5. ");
  } else {
    print("$Number is odd.");
  }
  if (Number % 7 == 0) {
    print("$Number is divisible by 7.");
  } else {
    print("$Number is not divisible by 7.");
  }
}
