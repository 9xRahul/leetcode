List<int> productExceptSelf(List<int> nums) {
  int n = nums.length;
  List<int> result = List.filled(n, 1);

  int left = 1;
  for (int i = 0; i < n; i++) {
    result[i] = left;
    left *= nums[i];
  }
  print(result);

  int right = 1;
  for (int i = n - 1; i >= 0; i--) {
    result[i] *= right;
    right *= nums[i];
  }

  return result;
}

void main() {
  print(productExceptSelf([1, 2, 3, 4]));
}
