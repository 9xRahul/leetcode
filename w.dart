int getLength(List<int> numbers) {
  int n = numbers.length;

  List<int> dp = List.filled(n, 1);

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      if (numbers[i] > numbers[j]) {
        int ck = dp[j] + 1;
        if (ck > dp[i]) {
          dp[i] = ck;
        }
      }
    }
  }
  int bestLength = dp[0];

  for (int k = 1; k < n; k++) {
    if (bestLength < dp[k]) {
      bestLength = dp[k];
    }
  }
  return bestLength;
}

void main() {
  List<int> arr = [1, 3, 6, 4, 5, 7];
  print(getLength(arr));
}
