void main() {
  List<int> list = [1, 2, 3, 4, 5];

  int rotation = 2;

  int n = list.length;

  rotation = rotation % n;

  List<int> rotated = [
    ...list.sublist(n - rotation),
    ...list.sublist(0, n - rotation),
  ];

  print(rotated);
}
