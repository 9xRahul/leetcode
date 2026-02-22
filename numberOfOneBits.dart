class Solution {
  int hammingWeight(int n) {
    String binary = n.toRadixString(2);

    int count = 0;
    for (var n in binary.split('')) {
      if (n == "1") {
        count++;
      }
    }

    return count;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.hammingWeight(2147483645));
}
