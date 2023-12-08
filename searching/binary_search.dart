/* Notes
------------------
Here's a short note explaining binary search:

**Binary Search**

Binary search is a highly efficient search algorithm used to find a specific element within a sorted array or list.
It works by repeatedly dividing the search space in half and eliminating one half based on the comparison
of the middle element with the target element. Here's how it works:

1. Begin with the entire sorted array.

2. Calculate the middle index.

3. Compare the middle element to the target element.
   - If they are equal, the target is found, and its index is returned.
   - If the middle element is greater than the target, eliminate the right half of the array.
   - If the middle element is less than the target, eliminate the left half of the array.

4. Repeat steps 2 and 3 until the target is found or the search space is empty.

Binary search is highly efficient, as it reduces the search space by half with each iteration. Its time complexity is O(log n), making it suitable for large datasets, unlike linear search, which has a time complexity of O(n). However, it requires that the data be sorted beforehand.
*/

/* Algorithm
----------------------------
   def binary_search(arr, target):
    left = 0  # Initialize the left pointer to the beginning of the array
    right = len(arr) - 1  # Initialize the right pointer to the end of the array

    while left <= right:
        mid = (left + right) // 2  # Calculate the middle index

        if arr[mid] == target:
            return mid  # Found the target, return its index
        elif arr[mid] < target:
            left = mid + 1  # Target is in the right half, adjust the left pointer
        else:
            right = mid - 1  # Target is in the left half, adjust the right pointer

    return -1  # Target is not in the array

# Example usage:
arr = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19]
target = 13
result = binary_search(arr, target)
if result != -1:
    print(f"Element {target} found at index {result}")
else:
    print(f"Element {target} not found in the array")

*/

import 'dart:io';

void main() {
  List<int> nums = [12, 14, 16, 20, 32, 45, 58, 78];
  print('Enter the search key: ');
  int searchKey = int.parse(stdin.readLineSync()!);
  int index = binarySearch(nums, searchKey);
  if (index >= 0) {
    print('Search key found at ${index + 1} position');
  } else {
    print('Search key not found');
  }
}

int binarySearch(List<int> nums, int searchKey) {
  int high = nums.length;
  int low = 0;
  int mid;
  while (low <= high) {
    mid = (low + high) ~/ 2;
    if (nums[mid] == searchKey) {
      return mid;
    }
    if (searchKey < nums[mid]) {
      high = mid - 1;
    } else {
      low = mid + 1;
    }
  }
  return -1;
}
