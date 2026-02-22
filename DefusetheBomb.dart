class Solution {
  List<int> decrypt(List<int> code, int k) {
    int n = code.length;
    List<int> result = List.filled(n, 0);

    if (k == 0) return result;

    for (int i = 0; i < n; i++) {
      int sum = 0;

      if (k > 0) {
        for (int j = 1; j <= k; j++) {
          sum += code[(i + j) % n]; 
        }
      } else {
        for (int j = 1; j <= -k; j++) {
          sum += code[(i - j + n) % n];
        }
      }

      result[i] = sum;
    }

    return result;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.decrypt([5, 7, 1, 4], 3)); // Output: [12, 10, 16, 13]
}
