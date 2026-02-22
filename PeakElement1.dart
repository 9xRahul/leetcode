void main() {
  List<int> arr = [7, 1, 2, 5, 4, 3, 2];

  int left = 0;
  int right = arr.length - 1;

  while (left < right) {
    int m = (left + right) ~/ 2;
    if (arr[m] < arr[m + 1]) {
      left = m + 1;
    } else {
      right = m;
    }
  }

  print("Peak index: $left, Peak value: ${arr[left]}");
}
