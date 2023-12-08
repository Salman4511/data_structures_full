import 'dart:io';

void main() {
  List<int> nums = [45, 56, 12, 47, 58, 65, 32, 14, 25];
  for (int i = 1; i < nums.length; i++) {
    int temp = nums[i];
    int j = i - 1;
    while (j >= 0 && nums[j] > temp) {
      nums[j + 1] = nums[j];
      j--;
    }
    nums[j + 1] = temp;
  }

  print('List after insertion sort : ');
  for (int i = 0; i < nums.length; i++) {
    stdout.write('${nums[i]}  ');
  }
}
