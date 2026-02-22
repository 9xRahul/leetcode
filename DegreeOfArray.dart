class Solution {
  int findShortestSubArray(List<int> nums) {
    Map<int, int> count = {};

    int max = 0;
    List<int> degree = [];
    for (int n in nums) {
      count[n] = (count[n] ?? 0) + 1;
    }

    for (var entry in count.entries) {
      if (entry.value >= max) {
        max = entry.value;
      }
    }

    for (var entry in count.entries) {
      if (entry.value == max) {
        degree.add(entry.key);
      }
    }

    print(degree);

    for (int i = 0; i < nums.length; i++) {
     
    }

    return max;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.findShortestSubArray([1, 2, 2, 3, 1]));
}
