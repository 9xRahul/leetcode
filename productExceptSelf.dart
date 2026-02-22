List<int> productExceptSelf(List<int> nums) {
  int n = nums.length;
  List<int> result = List.filled(n, 1);

  // Step 1: Prefix pass
  int prefix = 1;
  for (int i = 0; i < n; i++) {
    result[i] = prefix;
    prefix = prefix * nums[i];
  }

  print(result);

  // Step 2: Suffix pass
  int suffix = 1;
  for (int i = n - 1; i >= 0; i--) {
    result[i] = result[i] * suffix;
    suffix = suffix * nums[i];
  }

  return result;
}

void main() {
  List<int> nums = [1, 2, 3, 4];
  List<int> output = productExceptSelf(nums);

  print("Input: $nums");
  print("Output: $output");
  // Expected Output: [24, 12, 8, 6]
}
