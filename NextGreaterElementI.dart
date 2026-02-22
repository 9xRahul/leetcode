void main() {
  Map<int, int> indexMap = {};
  List<int> arr1 = [1, 2, 3, 4];
  List<int> arr2 = [2, 4];
  List<int> op = List.filled(arr2.length, -1);

  for (int i = 0; i < arr1.length; i++) {
    indexMap[arr1[i]] = i;
  }

  for (int i = 0; i < arr1.length; i++) {
    if (!indexMap.containsKey(arr1[i])) {
      continue;
    } else {
      for (int j = i + 1; j < arr2.length; j++) {
        if (arr2[j] > arr2[i]) {
          int idx = indexMap[arr2[i]]!;
          op[idx] = arr2[j];
          break;
        }
      }
    }
  }
  print(op);
}
