class MaxHeap {
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

  int _leftChild(int index) {
    return heap[_getLeftChildIndex(index)];
  }

  int _rightChild(int index) {
    return heap[_getRightChildIndex(index)];
  }

  int _parent(int index) {
    return heap[_getParentIndex(index)];
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

  _swap(int indexA, int indexB) {
    int temp = heap[indexA];
    heap[indexA] = heap[indexB];
    heap[indexB] = temp;
  }

  insert(var value) {
    heap.add(value);
    size++;
    _heapifyUp();
  }

  _heapifyUp() {
    int index = size - 1;
    while (_hasParent(index) && _parent(index) < heap[index]) {
      _swap(_getParentIndex(index), index);
      index = _getParentIndex(index);
    }
  }

  poll() {
    if (heap.isEmpty) {
      throw ('Heap is empty!!!');
    }
    heap[0] = heap[size - 1];
    heap.removeLast();
    size--;
    _heapifyDown();
  }

  _heapifyDown() {
    int index = 0;
    while (_hasLeftChild(index)) {
      int smallChildIndex = _getLeftChildIndex(index);
      if (_hasRightChild(index)) {
        if (_leftChild(index) > _rightChild(index)) {
          if (_leftChild(index) > _parent(index)) {
            _swap(_getLeftChildIndex(index), _getParentIndex(index));
          } else if (_rightChild(index) > _parent(index)) {
            _swap(_getRightChildIndex(index), _getParentIndex(index));
          }
        }
      } else {
        if (_leftChild(index) > _parent(index)) {
          _swap(_getLeftChildIndex(index), _getParentIndex(index));
        }
      }
      index = smallChildIndex;
    }
  }
}
