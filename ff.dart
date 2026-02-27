import 'dart:core';

void main() {
  List<int> lst = [1, 2, 4, 2, 54, 5, 6, 43, 4, 5, 6, 7];

  int first = -999999999999999;
  int second = -99999999999999;
  int third = -99999999999;

  for (var item in lst) {
    if (item > first) {
      third = second;
      second = first;
      first = item;
    } else if (item != first && item > second) {
      second = item;
    }
  }

  print(second);
}
