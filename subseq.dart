void main() {
  List<int> nums = [9, 1, 4, 7, 3, 8, 2, 6, 5];

  print(logestSubSequesnceSum(nums));
}

int logestSubSequesnceSum(List<int> list) {
  Set<int> numSet = list.toSet();
  int longest = 0;

  for (int num in numSet) {
    if (numSet.contains(num - 1)) {
      continue;
    }


    int streak = 1;
    int currentNum = num;

    while (numSet.contains(currentNum + 1)) {
      streak = streak + 1;
      currentNum = currentNum + 1;
    }
    if (streak > longest) {
      longest = streak;
    }
  }
  return longest;
}
