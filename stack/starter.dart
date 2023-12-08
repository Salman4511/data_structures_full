import 'stack.dart';

main() {
  Stack stack = Stack();
  stack.push(56);
  stack.push(67);
  stack.pop();
  stack.traversal();
  print(stack.top?.next?.value);
}
