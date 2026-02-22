class Solution {
  int findPoisonedDuration(List<int> timeSeries, int duration) {
    int totalTime = 0;

    int n = timeSeries.length;

    for (int i = 0; i < n - 1; i++) {
      int currentAttac = timeSeries[i];
      int nextAttack = timeSeries[i + 1];

      int timeGap = nextAttack - currentAttac;

      if (timeGap < duration) {
        totalTime += timeGap;
      } else {
        totalTime += duration;
      }
    }
    totalTime += duration;
    return totalTime;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.findPoisonedDuration([1, 4], 2));
}
