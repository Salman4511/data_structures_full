import 'dart:io';

void main() {
  List<int> nums = [56, 85, 96, 45, 12, 47, 36, 10];

  for (int i = 0; i < nums.length - 1; i++) {
    int min = i;
    for (int j = i + 1; j < nums.length; j++) {
      if (nums[j] < nums[min]) {
        min = j;
      }
      if (i != min) {
        int temp = nums[i];
        nums[i] = nums[j];
        nums[j] = temp;
      }
    }
  }
  print('After selection sort the list is: ');
  for (int i = 0; i < nums.length; i++) {
    stdout.write('${nums[i]}  ');
  }
}
