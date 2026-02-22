void main() {
  List<int> ar = [1, 1, 1, 1, 1, 2, 2, 3, 4, 5];

  int? previous;

  for (var i = 0; i < ar.length; i++) {
    int ch = ar[i];

    if (ch == previous) {
      ar[i] = 0;
    }

    previous = ch;
  }
  List<int> op = [];
  for (int j = 0; j < ar.length; j++) {
    if (ar[j] != 0) {
      op.add(ar[j]);
    }
  }
  print(op);
}
