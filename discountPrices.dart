class Solution {
  List<int> finalPrices(List<int> prices) {
    List<int> dPrice = [];
    int temp = -1;

    for (int i = 0; i < prices.length; i++) {
      for (int j = i + 1; j < prices.length; j++) {
        if (prices[j] <= prices[i]) {
          temp = prices[i] - prices[j];
          break;
        }
      }
      if (temp == -1) {
        dPrice.add(prices[i]);
      } else {
        dPrice.add(temp);
      }

      temp = -1;
    }
    return dPrice;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.finalPrices([10, 1, 1, 6]));
}
