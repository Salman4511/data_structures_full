import 'doubly_list.dart';

void main() {
  // final LinkedList list = LinkedList();
  // list.push(56);
  // list.push(45);
  // list.append(63);
  // list.insertAfter(1, 35);
  // list.insertAt(1, 62);
  // list.traversal();
  // print('');
  // list.reverseTraversal();
  // list.pop();
  // print('');
  // list.traversal();
  // list.removeLast();
  // print('');
  // list.traversal();
  // list.removeAt(1);
  // print('');
  // list.traversal();
  // print(list.tail?.value);

  DoublyList list = DoublyList();
  list.push(45);
  list.push(34);
  list.append(90);
  list.insertAt(2, 45);
  list.insertAt(1, 39);
  // list.traversal();
  print(list.head?.next?.value);
}
