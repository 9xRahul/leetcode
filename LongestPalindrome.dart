class Solution {
  int longestPalindrome(String s) {
    Map<String, int> freq = {};

    for (var ch in s.split('')) {
      freq[ch] = (freq[ch] ?? 0) + 1;
    }

    int length = 0;
    bool hasOdd = false;

    for (var count in freq.values) {
      length += (count ~/ 2) * 2;
      if (count % 2 == 1) hasOdd = true;
    }

    return hasOdd ? length + 1 : length;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.longestPalindrome("bbwwwaloonbldhhdbaloonl"));
}
