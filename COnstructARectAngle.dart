import 'dart:math';

class Solution {
  List<int> constructRectangle(int area) {
    int i = 1;

    while (i * i <= area) {
      i++;
    }
    i--;

    int w = i;
    while (area % w != 0) {
      w--;
    }

    int l = area ~/ w;

    return [l, w];
  }
}

void main() {
  Solution sol = Solution();
  print(sol.constructRectangle(125));
}
