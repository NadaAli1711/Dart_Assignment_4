import 'dart:io';

void main() {
  print('Enter 10 numbers: ');
  List<int> array = [];
  for (int i = 0; i < 10; i++) {
    int number = int.parse(stdin.readLineSync()!);
    array.add(number);
  }
  List<int> res = reverse(array);
  for (int i = 0; i < 10; i++) {
    stdout.write("${res[i]} ");
  }
  print('');
  print(reverse2(array));
}

List<int> reverse(List<int> array) {
  List<int> res = [];
  for (int i = 9; i >= 0; i--) {
    res.add(array[i]);
  }
  return res;
}

List<int> reverse2(List<int> array) {
  int start = 0;
  int end = 9;
  while (start < end) {
    int temp = array[start];
    array[start] = array[end];
    array[end] = temp;
    start++;
    end--;
  }
  return array;
}