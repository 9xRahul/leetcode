void main() {
  List<int> arr = [1, 2, 2, 3, 4, 4, 5, 1];
  List<int> uniqueArr = [];

  for (int i = 0; i < arr.length; i++) {
    bool isDup = false;
    for (int j = 0; j < uniqueArr.length; j++) {
      if (arr[i] == uniqueArr[j]) {
        isDup = true;
        break;
      }
    }
    if (!isDup) {
      uniqueArr.add(arr[i]);
    }
  }
  print(uniqueArr); // [1, 2, 3, 4, 5]
}
