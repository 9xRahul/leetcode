class Solution {
  int maxNumberOfBalloons(String text) {
    Map<String, int> count = {"b": 0, "a": 0, "l": 0, "o": 0, "n": 0};

    for (var char in text.split('')) {
      if (count.containsKey(char)) {
        count[char] = count[char]! + 1;
      }
    }

    count['l'] = (count["l"]! ~/ 2);
    count['o'] = count["o"]! ~/ 2;

    int minCount = count["b"]!;

    if (count['a']! < minCount) {
      minCount = count['a']!;
    }
    if (count['l']! < minCount) {
      minCount = count['l']!;
    }
    if (count['o']! < minCount) {
      minCount = count['o']!;
    }
    if (count['n']! < minCount) {
      minCount = count['n']!;
    }

    return minCount;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.maxNumberOfBalloons("bbwwwaloonbldhhdbaloonl"));
}
