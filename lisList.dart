int lisLengthAndSequence(List<int> numbers, List<int> outSequence) {
  if (numbers.isEmpty) return 0;

  int n = numbers.length;
  List<int> dp = List.filled(n, 1);
  List<int> prev = List.filled(n, -1); // predecessor index for reconstruction

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < i; j++) {
      if (numbers[j] < numbers[i]) {
        int candidateLength = dp[j] + 1;
        if (candidateLength > dp[i]) {
          dp[i] = candidateLength;
          prev[i] = j; // remember where i came from
        }
      }
    }
  }

  // find index of maximum dp value
  int bestLen = dp[0];
  int bestIdx = 0;
  for (int i = 1; i < n; i++) {
    if (dp[i] > bestLen) {
      bestLen = dp[i];
      bestIdx = i;
    }
  }

  // reconstruct sequence by following prev[] from bestIdx backwards
  List<int> seqRev = [];
  int cur = bestIdx;
  while (cur != -1) {
    seqRev.add(numbers[cur]);
    cur = prev[cur];
  }
  // reverse to get correct order
  for (int i = seqRev.length - 1; i >= 0; i--) {
    outSequence.add(seqRev[i]);
  }

  return bestLen;
}

void main() {
  List<int> arr = [10, 9, 2, 5, 3, 7, 101, 18];
  List<int> sequence = [];
  int length = lisLengthAndSequence(arr, sequence);
  print('LIS length = $length');
  print('One LIS: $sequence'); // prints the reconstructed LIS
}
