import 'dart:io';

void main() {
  print('Enter the integers between 1 and 100: ');
  List<int> array = [];
  while (true) {
    int number = int.parse(stdin.readLineSync()!);
    if (number == 0) break;
    array.add(number);
  }
  count(sortArray(array));
}

void count(List<int> array) {
  List<int> res = [];
  for (int i = 0; i < array.length; i++) {
    int count = 1;
    while (i + 1 < array.length && array[i] == array[i + 1]) {
      count++;
      i++;
    }
    print('${array[i]} occurs $count times');
  }
}


List<int> sortArray(List<int> array) {
  for (int i = 1; i < array.length; i++) {
    int n = i;
    while (n - 1 >= 0 && array[i] < array[n - 1]) {
      n--;
    }
    array.insert(n, array[i]);
    array.removeAt(i + 1);
  }
  return array;
}
