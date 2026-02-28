void main() {
  List<int> prices = [300, 500, 200, 400];

  int coupon = 1000;

  for (int i = 0; i < prices.length - 2; i++) {
    int target = coupon - prices[i];
    Map<int, int> m = {};

    for (int j = i + 1; j < prices.length; j++) {
      int rem = target - prices[j];
      if (m.containsKey(rem)) {
        print("$i,${m[rem]},$j");
      }

      m[prices[j]] = j;
    }
  }
}
