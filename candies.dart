class Solution {
  int distributeCandies(List<int> candyType) {
    int candiesCanBeEat = 0;
    Map<int, int> candies = {};

    for (int i in candyType) {
      candies[i] = (candies[i] ?? 0) + 1;
    }

    if (candies.length < candyType.length / 2) {
      return candies.length;
    } else {
      return candyType.length ~/ 2;
    }
  }
}

void main() {
  Solution sol = Solution();
  print(sol.distributeCandies([6, 6, 6, 6]));
}
