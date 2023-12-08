class Node {
  var value;
  Node? next;
  Node({required this.value, this.next});
}

class Queue {
  Node? front;
  Node? rear;

  bool get isEmpty => front == null;

  enqueue(var value) {
    front = Node(value: value, next: front);
    rear ??= front;
  }

  dequeue() {
    var currentNode = front;
    while (currentNode == rear) {
      currentNode = currentNode?.next;
    }
    if (currentNode == front) {
      front = front?.next;
      rear = null;
      return;
    }
    rear = currentNode;
    rear?.next = null;
  }
}
