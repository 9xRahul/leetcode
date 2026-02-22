class Solution {
  bool canJump(List<int> nums) {
    int lastIndex = nums.length - 1;

    bool isLast = false;

    int reach = 0;

    for (int i = 0; i < nums.length; i++) {
      if (i > reach) return false;

      if (reach > i + nums[i]) {
        reach = reach;
      } else {
        reach = i + nums[i];
      }

      if (reach >= lastIndex) {
        return true;
      }
    }
    return true;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.canJump([2, 3, 1, 1, 4,3]));
}
