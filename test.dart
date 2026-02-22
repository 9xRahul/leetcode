int lisLength(List<int> numbers) {
  if (numbers.length == 0) {
    return 0;
  }
  int n = numbers.length;
  List<int> dp = List.filled(n, 1);
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < i; j++) {
      if (numbers[i] > numbers[j]) {
        int cantidateLength = dp[j] + 1;
        if (cantidateLength > dp[i]) {
          dp[i] = cantidateLength;
        }
      }
    }
  }

  int bestLength = dp[0];
  for (int k = 1; k < dp.length; k++) {
    if (dp[k] > bestLength) {
      bestLength = dp[k];
    }
  }
  return bestLength;
}

void main() {
  List<int> arr = [1, 3, 6, 4, 5, 7];
  int length = lisLength(arr);
  print(length);
}
