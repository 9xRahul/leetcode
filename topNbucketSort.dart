class Solution {
  List<int> topKFrequent(List<int> nums, int k) {
    Map<int, int> count = {};

    for (int n in nums) {
      count[n] = (count[n] ?? 0) + 1;
    }

    int nLen = nums.length;
    List<List<int>> buckets = List.generate(nLen + 1, (_) => []);

    for (var entry in count.entries) {
      buckets[entry.value].add(entry.key);
    }

    List<int> result = [];

    for (int i = nums.length; i >= 0 && result.length < k; i--) {
      if (buckets[i].isNotEmpty) {
        for (var num in buckets[i]) {
          result.add(num);
          if (result.length == k) {
            break;
          }
        }
      }
    }

    return result;
  }
}

void main() {
  List<int> arr = [
    2,
    4,
    5,
    7,
    4,
    4,
    2,
    3,
    7,
    8,
    1,
    2,
    3,
    4,
    8,
    7,
    6,
    5,
    4,
    3,
    21,
    4,
    5,
    6,
    67,
  ];

  int k = 3;
  var sol = Solution();
  List<int> topK = sol.topKFrequent(arr, k);
  print("Top $k frequent elements: $topK");
}
