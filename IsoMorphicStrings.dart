class Solution {
  bool isIsomorphic(String s, String t) {
    if (s.length != t.length) return false;

    List<String> sTemp = s.split('');
    List<String> tTemp = t.split('');

    List<int> sPattern = [];
    List<int> tPattern = [];

    for (int i = 0; i < sTemp.length; i++) {
      sPattern.add(sTemp.indexOf(sTemp[i]));
      tPattern.add(tTemp.indexOf(tTemp[i]));
    }

    print("sPattern: $sPattern");
    print("tPattern: $tPattern");

    // Join the pattern lists as strings and compare
    String sT = sPattern.join(',');
    String tT = tPattern.join(',');

    print("After join: sT = $sT, tT = $tT");

    return sT == tT;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.isIsomorphic("fow", "bwa"));
}
