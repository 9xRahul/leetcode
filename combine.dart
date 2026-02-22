List<int> mergeSortedLists(List<int> a, List<int> b) {
  List<int> merged = [];
  int i = 0;
  int j = 0;

  while (i < a.length && j < b.length) {
    if (a[i] <= b[j]) {
      merged.add(a[i]);
      i++;
    } else {
      merged.add(b[j]);
      j++;
    }
  }

  while (i < a.length) {
    merged.add(a[i]);
    i++;
  }

  while (j < b.length) {
    merged.add(b[j]);
    j++;
  }

  return merged;
}

void main() {
  List<int> a = [1, 2, 3, 4];
  List<int> b = [1, 2, 3, 4, 5];
  print(mergeSortedLists(a, b));
}
