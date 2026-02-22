class Solution {
  int smallestEqual(List<int> nums) {
    int smallest = 100000000000000000;
    bool isFound = false;
    for (int i = 0; i < nums.length; i++) {
      if (i % 10 == nums[i]) {
        if (smallest > i) {
          smallest = i;
          isFound = true;
        }
      }
    }

    return isFound ? smallest : -1;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.smallestEqual([2, 3, 1, 1, 3, 3]));
}
