import 'dart:io';

void main() {
  List<int> nums = [23, 56, 45, 78, 96, 32, 25, 47];
  for (int i = 0; i < nums.length - 1; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if (nums[i] > nums[j]) {
        int temp = nums[i];
        nums[i] = nums[j];
        nums[j] = temp;
      }
    }
  }
  print('List after sorting: ');
  for (int i = 0; i < nums.length; i++) {
    stdout.write('${nums[i]} ');
  }
}
