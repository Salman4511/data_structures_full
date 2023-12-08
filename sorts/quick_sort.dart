import 'dart:io';

void main() {
  List<int> nums = [45, 56, 12, 47, 58, 65, 32, 14, 25];
  nums = quickSort(nums);
  print('List after quick sort: ');
  for (int i = 0; i < nums.length; i++) {
    stdout.write('${nums[i]}  ');
  }
}

List<int> quickSort(List<int> nums) {
  if (nums.length < 2) return nums;
  int pivot = nums[0];
  var left = nums.where((element) => element.compareTo(pivot) < 0);
  var right = nums.where((element) => element.compareTo(pivot) > 0);
  var equal = nums.where((element) => element.compareTo(pivot) == 0);
  return [
    ...quickSort(left.toList()),
    ...equal.toList(),
    ...quickSort(right.toList())
  ];
}
