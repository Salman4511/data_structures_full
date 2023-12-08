import 'dart:io';

class Stack {
  List<String> stack = [];
  push(String value) {
    stack.add(value);
  }

  String pop() {
    return stack.removeLast();
  }
}

void main() {
  String words;
  Stack stack = Stack();
  print('Enter the string to reverse: ');
  words = stdin.readLineSync()!;
  for (int i = 0; i < words.length; i++) {
    stack.push(words[i]);
  }
  String reversedString = '';
  while (stack.stack.isNotEmpty) {
    reversedString += stack.pop();
  }
  print(reversedString);
}
