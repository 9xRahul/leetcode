void main() {
  List<dynamic> list = [4, 5, "5", "6.7", "rahul", "futter"];

  List<String> nums = [];
  List<String> str = [];

  for (var item in list) {
    if (item is String) {
      if (num.tryParse(item) != null) {
        nums.add(item.toString());
      } else {
        str.add(item);
      }
    } else {
      nums.add(item.toString()
      );
    }
  }

  print(nums);
  print(str);
}
