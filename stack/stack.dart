class Node {
  var value;
  Node? next;
  Node({required this.value, this.next});
}

class Stack {
  Node? top;

  bool get isEmpty => top == null;

  push(var value) {
    top = Node(value: value, next: top);
  }

  pop() {
    if (isEmpty) {
      print(" Can't delete! Stack is empty");
      return;
    }
    top = top?.next;
  }

  traversal() {
    print('Stack elements are: ');
    print('---------------------');
    var currentNode = top;
    while (currentNode != null) {
      print(currentNode.value);
      currentNode = currentNode.next;
    }
  }
}
