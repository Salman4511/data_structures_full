import 'binary_search_tree.dart';

void main() {
  BinarySearchTree bst = BinarySearchTree();
  bst.insert(5);
  bst.insert(8);
  bst.insert(4);
  print(bst.root?.value);
  print(bst.root?.right?.value);
  print(bst.search(8));
  // bst.inOrderTraversal();
  // bst.preOrderTraversal();
  // bst.postOrderTraversal();
  // bst.breadthFirstTraversal();
  bst.delete(8);
  bst.inOrderTraversal();
}
