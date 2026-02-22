void main() {
  int n = 123;

  int temp = n;

  int? reverse = 0;

  bool negative = false;

  if (temp < 0) {
    negative = true;
    temp = -temp;
  }

  while (temp > 0) {
    int digit = temp % 10;
    reverse = reverse! * 10 + digit;
    temp = temp ~/ 10;
  }
    if (reverse! > 2147483647) 
    
  print(reverse);
}
