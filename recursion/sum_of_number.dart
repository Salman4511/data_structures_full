import 'dart:io';

void main() {
  print('Enter the limit: ');
  int limit = int.parse(stdin.readLineSync()!);
  print('Sum of $limit numbers is ${sumOfNumbers(limit)}');
}

int sumOfNumbers(int number) {
  if (number < 2) {
    return 1;
  }
  return number + sumOfNumbers(number - 1);
}
