import 'dart:io';

class Node {
  var value;
  Node? next;
  Node? prev;
  Node({this.prev, required this.value, this.next});
}

class DoublyList {
  Node? head;
  Node? tail;

  bool get isEmpty => head == null;

//---------------------------------Insertions---------------------------------//

  push(var value) {
    head = Node(value: value, next: head);
    if (isEmpty) {
      tail ??= head;
      tail?.prev = head;
    } else {
      head?.next?.prev = head;
    }
  }

  append(value) {
    if (isEmpty) {
      push(value);
      return;
    }
    tail?.next = Node(prev: tail, value: value);
    tail = tail?.next;
  }

  Node nodeAt(int index) {
    var currentNode = head;
    var currentIndex = 0;
    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex++;
    }
    return currentNode!;
  }

  insertAt(int index, var value) {
    var node = nodeAt(index - 1);
    if (node == head) {
      push(value);
      return;
    } else if (node == tail) {
      append(value);
      return;
    }
    node.next?.prev = Node(prev: node.prev, value: value, next: node);
    node.next = Node(prev: node.prev, value: value, next: node);
  }

  //--------------------------------Traversal---------------------------------//

  traversal() {
    var currentNode = head;
    while (currentNode != null) {
      if (currentNode == tail) {
        stdout.write(currentNode.value);
      } else {
        stdout.write('${currentNode.value} --> ');
      }
      currentNode = currentNode.next;
    }
  }
}
