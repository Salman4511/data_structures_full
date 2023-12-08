import 'dart:io';

void main() {
  List<int> nums = [45, 85, 96, 32, 56, 78, 51];
  int searchKey;
  print('Enter the search key: ');
  searchKey = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < nums.length; i++) {
    if (searchKey == nums[i]) {
      print('Search key is found at ${i + 1} position');
      return;
    }
  }
  print('Search key not found');
}
