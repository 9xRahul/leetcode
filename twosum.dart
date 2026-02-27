void main() {
  List<int> prices = [1200, 500, 700, 300];
  int coupon = 1000;

  Map<int, int> priceMap = {}; // price -> index

  for (int i = 0; i < prices.length; i++) {
    int remaining = coupon - prices[i];

    if (priceMap.containsKey(remaining)) {
      print("Indices: ${priceMap[remaining]}, $i");
      return;
    }

    priceMap[prices[i]] = i;
  }

  print("No pair found");
}
