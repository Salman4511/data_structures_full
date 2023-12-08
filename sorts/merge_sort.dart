import 'dart:io';

void main() {
  List<int> numbers = [45, 12, 32, 47, 56, 89, 25, 14, 49];
  numbers = mergeSort(numbers);
  print('List after merge sort: ');
  for (int i = 0; i < numbers.length; i++) {
    stdout.write('${numbers[i]}  ');
  }
}

List<int> mergeSort(List<int> numbers) {
  if (numbers.length < 2) return numbers;
  int mid = numbers.length ~/ 2;
  var left = mergeSort(numbers.sublist(0, mid));
  var right = mergeSort(numbers.sublist(mid));
  return merge(left, right);
}

List<int> merge(List<int> left, List<int> right) {
  int indexA = 0;
  int indexB = 0;
  List<int> result = [];

  while (indexA < left.length && indexB < right.length) {
    int valueA = left[indexA];
    int valueB = right[indexB];
    if (valueA.compareTo(valueB) < 0) {
      result.add(valueA);
      indexA++;
    } else if (valueA.compareTo(valueB) > 0) {
      result.add(valueB);
      indexB++;
    } else {
      result.addAll([indexA, indexB]);
      indexA++;
      indexB++;
    }
  }

  if (indexA < left.length) {
    result.addAll(left.getRange(indexA, left.length));
  }
  if (indexB < right.length) {
    result.addAll(right.getRange(indexB, right.length));
  }

  return result;
}
