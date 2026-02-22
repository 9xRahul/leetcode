void moveZeroes(List<int> nums) {
  int insertPos = 0;

  // Place all non-zero elements at the front
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] != 0) {
      nums[insertPos] = nums[i];
      insertPos++;
    }
  }

  // Fill remaining places with 0
  while (insertPos < nums.length) {
    nums[insertPos] = 0;
    insertPos++;
  }
}

void main() {
  List<int> nums = [1, 0, 3, 0, 12];
  moveZeroes(nums);
  print(nums); // [1, 3, 12, 0, 0]
}
