import 'queue.dart';

void main() {
  Queue queue = Queue();
  queue.enqueue(56);
  queue.enqueue(67);
  print(queue.front?.value);
  queue.dequeue();
  print(queue.front?.value);
}
