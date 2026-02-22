class Solution {
  int mostFrequentEven(List<int> nums) {
    Map<int, int> count = {};

    int mostEven = -1;
    int mosyEvenKey = -1;

    for (int num in nums) {
      count[num] = (count[num] ?? 0) + 1;

      if (num % 2 == 0) {
        int freq = count[num]!;

        if (freq > mostEven) {
          mostEven = freq;
          mosyEvenKey = num;
        } else if (freq == mostEven && num < mosyEvenKey) {
          mosyEvenKey = num;
        }
      }
    }

    return mosyEvenKey;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.mostFrequentEven([31, 1, 2, 3, 1, 2, 3, 4, 31, 2, 4, 4, 4]));
}
