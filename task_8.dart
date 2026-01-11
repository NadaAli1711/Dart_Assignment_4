import 'dart:io';

void main() {
  List<int> array = getDistinct();
  print('The number of distinct number is ${array.length}');
  stdout.write('The distinct numbers are: ');
  for (int i = 0; i < array.length; i++) {
    stdout.write(array[i]);
  }
}

List<int> getDistinct() {
  List<int> array = [];
  print('Enter ten numbers:');
  for (int i = 0; i < 10; i++) {
    int input = int.parse(stdin.readLineSync()!);
    if (!array.contains(input)) {
      array.add(input);
    }
  }
  return array;
}