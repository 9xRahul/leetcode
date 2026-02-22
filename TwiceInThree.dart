class Solution {
  List<int> twoOutOfThree(List<int> nums1, List<int> nums2, List<int> nums3) {
    // Convert lists to sets for O(1) lookup and to remove duplicates
    Set<int> s1 = nums1.toSet();
    Set<int> s2 = nums2.toSet();
    Set<int> s3 = nums3.toSet();

    Set<int> result = {};

    // Check elements in s1
    for (var num in s1) {
      if (s2.contains(num) || s3.contains(num)) {
        result.add(num);
      }
    }

    // Check elements in s2 (no need to check s3 twice)
    for (var num in s2) {
      if (s1.contains(num) || s3.contains(num)) {
        result.add(num);
      }
    }

    // Return as a list
    return result.toList();
  }
}

void main() {
  Solution sol = Solution();
  print(
    sol.twoOutOfThree([2, 3, 1, 1, 3, 3], [2, 3, 4, 5, 2], [45, 4, 2, 3, 1]),
  );
}
