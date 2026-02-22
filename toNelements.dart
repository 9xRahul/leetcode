void main() {
  List<int> arr = [
    2,
    4,
    5,
    7,
    4,
    4,

  ];

  Map<int, int> count = {};
  List<int> key = [];
  List<int> values = [];

  for (int num in arr) {
    count[num] = (count[num] ?? 0) + 1;
  }

  print(count);

  for (var entry in count.entries) {
    key.add(entry.key);
    values.add(entry.value);
  }

  for (int i = 0; i < values.length; i++) {
    for (int j = i + 1; j < values.length; j++) {
      if (values[i] < values[j]) {
        int tempVal = values[i];
        values[i] = values[j];
        values[j] = tempVal;

        int tempKey = key[i];
        key[i] = key[j];
        key[j] = tempKey;
      }
    }
  }
  print(key);
}
