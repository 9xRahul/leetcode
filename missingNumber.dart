findMissingNumber({required List<int> list}) {
  int total = ((list.length + 1) * (list.length + 2)) ~/ 2;
  int subTotal = 0;
  for (int i = 0; i < list.length; i++) {
    subTotal += list[i];
  }
  return total - subTotal;
}

void main() {
  print(findMissingNumber(list: [1, 2, 3, 4, 5, 6, 9, 8, 10]));
}
