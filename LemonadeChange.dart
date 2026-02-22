class Solution {
  bool lemonadeChange(List<int> bills) {
    int fives = 0;
    int tens = 0;
    bool isCorrect = false;
    for (int i = 0; i < bills.length; i++) {
     int five = 0;
      int ten = 0;

      for (int bill in bills) {
        if (bill == 5) {
          five++;
        } else if (bill == 10) {
          if (five == 0)
           return false;
          five--;
          ten++;
        } else {
   
          if (ten > 0 && five > 0) {
            ten--;
            five--;
          } else if (five >= 3) {
            five -= 3;
          } else {
            return false;
          }
        }
      }
    }

    return true;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.lemonadeChange([5, 5, 5, 10, 20]));
}
