import 'max_heap.dart';

void main() {
  MaxHeap maxHeap = MaxHeap();
  maxHeap.insert(67);
  maxHeap.insert(78);
  maxHeap.insert(45);
  print(maxHeap.heap);
  maxHeap.poll();
  print(maxHeap.heap);
}
