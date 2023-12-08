/*Notes
----------------------
Here's a short note on the recursive binary search algorithm:

**Recursive Binary Search**

Recursive binary search is an efficient algorithm for finding a specific element in a sorted array.
It employs a divide-and-conquer approach, dividing the search space in half with each recursive call.
Here's a breakdown of how it works:

1. **Input Parameters**: The algorithm takes as input the sorted array, the target element to find, and two pointers:
`left` and `right`, initially set to the beginning and end of the array.

2. **Base Case**: The algorithm first checks if `left` is less than or equal to `right`. If not,
it means the target element is not in the array, and it returns -1.

3. **Calculate Middle**: It calculates the middle index of the current search space using `(left + right) // 2`.

4. **Compare**: The algorithm compares the element at the middle index with the target:
   - If they are equal, it returns the index of the target element as it has been found.
   - If the middle element is greater than the target, it recursively searches the left subarray by
   updating the `right` pointer.
   - If the middle element is less than the target, it recursively searches the right subarray by updating
   the `left` pointer.

5. **Recursion**: The algorithm repeatedly applies these steps by making recursive calls to narrow down the search space.

6. **Result**: If the target element is found, its index is returned. If not, and the base case is reached,
it returns -1 to indicate that the element is not in the array.

Recursive binary search is a powerful technique for efficiently searching large, sorted datasets and has a
time complexity of O(log n), making it considerably faster than linear search for larger datasets. However,
it requires the data to be pre-sorted.
 */

/*Algorithm
--------------------
def binary_search(arr, target, left, right):
    if left <= right:
        mid = (left + right) // 2  # Calculate the middle index

        if arr[mid] == target:
            return mid  # Found the target, return its index
        elif arr[mid] < target:
            # Target is in the right half, recursively search the right subarray
            return binary_search(arr, target, mid + 1, right)
        else:
            # Target is in the left half, recursively search the left subarray
            return binary_search(arr, target, left, mid - 1)

    return -1  # Target is not in the array

# Example usage:
arr = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19]
target = 13
result = binary_search(arr, target, 0, len(arr) - 1)
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
  int low = 0;
  int high = nums.length - 1;

  int binarySearch(int low, int high) {
    if (low == high) {
      if (nums[low] == searchKey) {
        return low;
      } else {
        return -1;
      }
    } else {
      int mid = (low + high) ~/ 2;
      if (nums[mid] == searchKey) {
        return mid;
      }
      if (nums[mid] > searchKey) {
        return binarySearch(low, mid - 1);
      } else {
        return binarySearch(mid + 1, high);
      }
    }
    // return -1;
  }

  int index = binarySearch(low, high);
  if (index >= 0) {
    print('Search key found at ${index + 1} position');
  } else {
    print('Search key not found');
  }
}
