void main() {
  List<int> cart = [200, 300, 400, 700];
  int discount = 500;

  Map<int, int> m = {};
  List<int> pair = [];

  for (int i = 0; i < cart.length; i++) {
    int remain = discount - cart[i];

    if (m.containsKey(remain)) {
      pair.add(i);
      pair.add(m[remain]!);
      print(pair);
      return;
    }
    m[cart[i]] = i;
  }
}
