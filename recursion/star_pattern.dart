import 'dart:io';

void main() {
  print('Enter the limit: ');
  int limit = int.parse(stdin.readLineSync()!);
  printStars(limit);
}

printStars(int limit) {
  if (limit >= 1) {
    printStars(limit - 1);
    for (int i = 0; i < limit; i++) {
      stdout.write('* ');
    }
    print('');
  }
}
