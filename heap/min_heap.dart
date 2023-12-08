class MinHeap {
  int size = 0;
  List<int> heap = [];

  int _getLeftChildIndex(int parentIndex) {
    return parentIndex * 2 + 1;
  }

  int _getRightChildIndex(int parentIndex) {
    return parentIndex * 2 + 2;
  }

  int _getParentIndex(int childIndex) {
    return (childIndex - 1) ~/ 2;
  }

  bool _hasLeftChild(int index) {
    return _getLeftChildIndex(index) < size;
  }

  bool _hasRightChild(int index) {
    return _getRightChildIndex(index) > size;
  }

  bool _hasParent(int index) {
    return _getParentIndex(index) >= 0;
  }

  int _leftChild(int parentIndex) {
    return heap[_getLeftChildIndex(parentIndex)];
  }

  int _rightChild(int parentIndex) {
    return heap[_getRightChildIndex(parentIndex)];
  }

  int _parent(int childIndex) {
    return heap[_getParentIndex(childIndex)];
  }

  _swap(indexA, indexB) {
    int temp = heap[indexA];
    heap[indexA] = heap[indexB];
    heap[indexB] = temp;
  }

  //-------------------------------Insert-------------------------------------//

  insert(var value) {
    heap.add(value);
    size++;
    _heapifyUp();
  }

  _heapifyUp() {
    int index = size - 1;
    while (_hasParent(index) && _parent(index) > heap[index]) {
      _swap(_getParentIndex(index), index);
      index = _getParentIndex(index);
    }
  }

  //----------------------------------Pek value------------------------------//

  int peek() {
    if (heap.isEmpty) {
      throw ('There is no data!!!');
    }
    print('The peek of the heap is ${heap[0]}');
    return heap[0];
  }

  //-----------------------------------Deletion-------------------------------//

  poll() {
    if (heap.isEmpty) {
      throw ('Heap is empty');
    }
    heap[0] = heap[size - 1];
    heap.removeLast();
    size--;
    _heapifyDown();
  }

  _heapifyDown() {
    int index = 0;
    while (_hasLeftChild(index)) {
      int smallestChildIndex = _getLeftChildIndex(index);

      if (_hasRightChild(index)) {
        if (_leftChild(index) < _rightChild(index)) {
          _swap(_getLeftChildIndex(index), _getParentIndex(index));
        } else {
          if (_rightChild(index) < _parent(index)) {
            _swap(_getRightChildIndex(index), _getParentIndex(index));
          }
        }
      } else {
        if (_leftChild(index) < _parent(index)) {
          _swap(_getLeftChildIndex(index), _getParentIndex(index));
        }
      }
      index = smallestChildIndex;
    }
  }

  //--------------------------------get node----------------------------------//

  int _getNode(int index) {
    return heap[index];
  }
}
