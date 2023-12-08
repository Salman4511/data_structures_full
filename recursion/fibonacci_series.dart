import 'dart:io';

void main() {
  print('Enter the limit: ');
  int limit = int.parse(stdin.readLineSync()!);
  print('fibonacci number of $limit is ${fibonacci(limit)}');
}

int fibonacci(int number) {
  if (number < 2) {
    return number;
  } else {
    return fibonacci(number - 1) + fibonacci(number - 2);
  }
}
