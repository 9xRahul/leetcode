void rotate(List<int> nums, int k) {
  int n = nums.length;
  k = k % n; // in case k > n

  void reverse(int start, int end) {
    while (start < end) {
      int temp = nums[start];
      nums[start] = nums[end];
      nums[end] = temp;
      start++;
      end--;
    }
  }


  // Step 1: Reverse whole array
  reverse(0, n - 1);

  // Step 2: Reverse first k elements
  reverse(0, k - 1);

  // Step 3: Reverse remaining n-k elements
  reverse(k, n - 1);
}

void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6, 7];
  int k = 3;
  rotate(arr, k);
  print(arr); // [5, 6, 7, 1, 2, 3, 4]
}
