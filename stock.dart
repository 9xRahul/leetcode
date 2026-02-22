void main() {
  List<int> arr = [7, 1, 5, 3, 6, 4];

  int minPrice = arr[0];
  int profit = 0;
  int day = 0;

  while (day < arr.length) {
 
    if (arr[day] < minPrice) {
      minPrice = arr[day];
    }

    int currentProfit = arr[day] - minPrice;
    if (currentProfit > profit) {
      profit = currentProfit;
    }

    day += 1;
  }

  print("Maximum Profit: $profit");
}
