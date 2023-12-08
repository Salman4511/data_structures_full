class Node {
  var value;
  Node? left;
  Node? right;
  Node({this.left, required this.value, this.right});
}

class BinarySearchTree {
  Node? root;

  //---------------------------Insert new node--------------------------------//

  insert(var value) {
    var currentNode = root;
    if (currentNode == null) {
      root = Node(value: value);
      return;
    }
    while (true) {
      if (value.compareTo(currentNode?.value) < 0) {
        if (currentNode?.left == null) {
          currentNode?.left = Node(value: value);
          break;
        } else {
          currentNode = currentNode?.left;
        }
      } else {
        if (currentNode?.right == null) {
          currentNode?.right = Node(value: value);
          break;
        } else {
          currentNode = currentNode?.right;
        }
      }
    }
  }

  //---------------------------Searching a node-------------------------------//

  bool search(var value) {
    var currentNode = root;
    while (currentNode != null) {
      if (value.compareTo(currentNode.value) < 0) {
        currentNode = currentNode.left;
      } else if (value.compareTo(currentNode.value) > 0) {
        currentNode = currentNode.right;
      } else {
        return true;
      }
    }
    return false;
  }

  //------------------------------Traversals----------------------------------//

  inOrderTraversal() {
    _inOrderTraversal(root);
  }

  _inOrderTraversal(Node? node) {
    if (node != null) {
      _inOrderTraversal(node.left);
      print(node.value);
      _inOrderTraversal(node.right);
    }
  }

  preOrderTraversal() {
    _preOrderTraversal(root);
  }

  _preOrderTraversal(Node? node) {
    if (node != null) {
      print(node.value);
      _preOrderTraversal(node.left);
      _preOrderTraversal(node.right);
    }
  }

  postOrderTraversal() {
    _postOrderTraversal(root);
  }

  _postOrderTraversal(Node? node) {
    if (node != null) {
      _postOrderTraversal(node.left);
      _postOrderTraversal(node.right);
      print(node.value);
    }
  }

  breadthFirstTraversal() {
    if (root == null) return;
    List<Node> nodes = [];
    nodes.add(root!);
    while (nodes.isNotEmpty) {
      Node node = nodes.removeAt(0);
      print(node.value);
      if (node.left != null) {
        nodes.add(node.left!);
      }
      if (node.right != null) {
        nodes.add(node.right!);
      }
    }
  }

  //-------------------------------Deletions----------------------------------//

  delete(var value) {
    _deleteNode(root, value);
  }

  Node? _deleteNode(Node? node, var value) {
    if (node == null) return null;
    if (value.compareTo(node.value) < 0) {
      node.left = _deleteNode(node.left, value);
    } else if (value.compareTo(node.value) > 0) {
      node.right = _deleteNode(node.right, value);
    } else {
      if (node.left == null && node.right == null) {
        node = null;
      } else if (node.right != null) {
        node.value = _successor(node);
        node.right = _deleteNode(node.right, value);
      } else {
        node.value = _predecessor(node);
        node.left = _deleteNode(node.left, value);
      }
    }
    return node;
  }

  int _successor(Node? node) {
    node = node?.right;
    while (node?.left != null) {
      node = node?.left;
    }
    return node?.value;
  }

  int _predecessor(Node? node) {
    node = node?.left;
    while (node?.right != null) {
      node = node?.right;
    }
    return node?.value;
  }
}
