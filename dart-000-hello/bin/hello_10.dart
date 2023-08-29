import 'dart:math';

void main(List<String> args) {
  List<int> nums = [];

  // 1 ~ 100까지 범위의 난수를 만들어 20개의 배열을 생성했다
  for (int i = 0; i < 20; i++) {
    var num = Random().nextInt(100) + 1;
    nums.add(num);
  }

  // 배열에 저장된 요소들중에 소수를 구하여 출력하시오.
  List<int> result = [];
  for (int i = 0; i < nums.length; i++) {
    if (prime(nums[i])) result.add(nums[i]);
  }
  print(nums);
  print("prime : $result");
}

bool prime(int num) {
  if (num < 2) return false;
  for (int i = 2; i < num; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}
