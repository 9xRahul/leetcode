class Solution {
  String toHex(int num) {
    String hexDigits = "0123456789abcdef";
    String hex = "";

    if (num < 0) {
      num = (num + 0x100000000) & 0xFFFFFFFF;
    }

    if (num == 0) {
      return "0";
    }

    while (num > 0) {
      int remainder = num % 16;
      hex = hexDigits[remainder] + hex;
      num ~/= 16;
    }

    return hex;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.toHex(-125));
}
