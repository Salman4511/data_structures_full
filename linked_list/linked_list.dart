import 'dart:io';

class Node<T> {
  T value;
  Node? next;
  Node({required this.value, this.next});
}

class LinkedList {
  Node? head;
  Node? tail;

  bool get isEmpty => head == null;

//---------------------------------Insertions---------------------------------//

  push(var value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

  append(var value) {
    if (isEmpty) {
      push(value);
      return;
    }
    tail?.next = Node(value: value);
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

  insertAfter(int index, var value) {
    var node = nodeAt(index);
    if (node == tail) {
      append(value);
      return;
    }
    node.next = Node(value: value, next: node.next);
  }

  insertAt(int index, var value) {
    var node = nodeAt(index - 1);
    if (node == tail) {
      append(value);
      return;
    }
    node.next = Node(value: value, next: node.next);
  }

  //----------------------------Traversal------------------------------------//

  traversal() {
    var currentNode = head;
    while (currentNode != null) {
      if (currentNode.next == null) {
        stdout.write(currentNode.value);
      } else {
        stdout.write('${currentNode.value} --> ');
      }
      currentNode = currentNode.next;
    }
  }

  recursively(Node? node) {
    if (node == null) return;
    recursively(node.next);
    stdout.write('${node.value} <-- ');
  }

  reverseTraversal() {
    recursively(head);
  }

  //----------------------------Deletions-------------------------------------//

  pop() {
    head = head?.next;
    if (isEmpty) {
      tail = null;
    }
  }

  removeLast() {
    if (head == tail) {
      pop();
      return;
    }
    var currentNode = head;
    while (currentNode?.next != tail) {
      currentNode = currentNode?.next;
    }
    tail = currentNode;
    tail?.next = null;
  }

  removeAt(int index) {
    var node = nodeAt(index - 1);
    if (node == tail) {
      removeLast();
      return;
    }
    node.next = node.next?.next;
  }
}
