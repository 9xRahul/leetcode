class Solution {
  int singleNumber(List<int> nums) {
    int n = 0;
    Map<int, int> count = {};
    for (int i = 0; i < nums.length; i++) {
      count[nums[i]] = (count[nums[i]] ?? 0) + 1;
    }
   n= count.keys.firstWhere((c) => count[c] == 1);
    return n;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.singleNumber([2, 2, 3, 2]));
}
