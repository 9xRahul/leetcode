class Solution {
  List<int> findDuplicates(List<int> nums) {
    List<int> result = [];

    for (int i = 0; i < nums.length; i++) {
      int index = nums[i].abs() - 1;

      if (nums[index] < 0) {
        result.add(index + 1);
      } else {
        nums[index] = -nums[index];
      }
    }

    return result;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.findDuplicates([4, 3, 2, 7, 8, 2, 3, 1]));
}
