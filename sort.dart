void sort(List<int> nums) {
  for (int i = 0; i < nums.length; i++) {
    for (int j = 0; j < nums.length - i - 1; j++) {
      if (nums[j] > nums[j + 1]) {
        int temp = nums[j];
        nums[j] = nums[j + 1];
        nums[j + 1] = temp;
      }
    }
  }
}

void main() {
  List<int> nums = [2, 1, 0, 3, 0, 12];

  sort(nums);
  print(nums);
  int k = 3;
  print(nums[nums.length - k]);
}
