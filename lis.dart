int lisLength(List<int> numbers) {
  if (numbers.isEmpty) {
    return 0;
  }

  int n = numbers.length;

  List<int> dp = List.filled(n, 1);

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < i; j++) {

      if (numbers[j] < numbers[i]) {
        int candidateLength = dp[j] + 1;
        if (candidateLength > dp[i]) {
          dp[i] = candidateLength;
        }
      }
    }
  }

  int bestLength = dp[0];
  for (int k = 1; k < n; k++) {
    if (dp[k] > bestLength) {
      bestLength = dp[k];
    }
  }

  return bestLength;
}

void main() {
  List<int> arr = [10, 9, 2, 5, 3, 7, 101, 18];
  int length = lisLength(arr);
  print(length);
}
