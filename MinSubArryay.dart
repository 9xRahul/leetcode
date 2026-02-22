import 'dart:math';

int minSubArrayLen(int target, List<int> nums) {
  int left = 0, total = 0;

  int result = 1000000;
  for (int right = 0; right < nums.length; right++) {
    total = total + nums[right];
    while (total >= target) {
      int currentLength = right - left + 1;
      result = min(currentLength, result);
      total = total - nums[left];
      left = left + 1;
    }
  }
  if (result == 1000000) {
    return 0;
  } else {
    return result;
  }
}

void main() {
  int target = 4;
  List<int> nums = [1, 4, 4];

  int result = minSubArrayLen(target, nums);

  print("Input: target = $target, nums = $nums");
  print("Minimal length subarray with sum >= $target -> $result");

 
}
