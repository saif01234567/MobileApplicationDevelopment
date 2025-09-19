import 'dart:io';

void main() {
  // Step 1: Input name and age
  stdout.write("Enter your name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter your age: ");
  int age = int.parse(stdin.readLineSync()!);

  if (age < 18) {
    print("Sorry $name, you are not eligible to register.");
    return; // stop execution
  }

  // Step 2: Ask for N numbers
  stdout.write("How many numbers do you want to enter? ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> numbers = [];

  for (int i = 0; i < n; i++) {
    stdout.write("Enter number ${i + 1}: ");
    numbers.add(int.parse(stdin.readLineSync()!));
  }

  // Step 3: Calculations
  int evenSum = 0;
  int oddSum = 0;
  int largest = numbers[0];
  int smallest = numbers[0];

  for (int num in numbers) {
    if (num % 2 == 0) {
      evenSum += num;
    } else {
      oddSum += num;
    }

    if (num > largest) largest = num;
    if (num < smallest) smallest = num;
  }

  // Step 4: Print results
  print("\n--- Results ---");
  print("Numbers entered: $numbers");
  print("Sum of even numbers: $evenSum");
  print("Sum of odd numbers: $oddSum");
  print("Largest number: $largest");
  print("Smallest number: $smallest");
}
