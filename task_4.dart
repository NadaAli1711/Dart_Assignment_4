import 'dart:io';

void main() {
  print('Enter the number of students: ');
  int number = int.parse(stdin.readLineSync()!);
  print('Enter $number scores: ');
  List<int> array = [];
  int bestScore = 0;
  for (int i = 0; i < number; i++) {
    int input = int.parse(stdin.readLineSync()!);
    array.add(input);
    if (bestScore < input) {
      bestScore = input;
    }
  }
  List<String> res = displayGrades(array, bestScore);
  for (int i = 0; i < number; i++) {
    print(res[i]);
  }
}

List<String> displayGrades(List<int> array, int bestScore) {
  List<String> res = [];
  for (int i = 0; i < array.length; i++) {
    if (array[i] >= bestScore - 10) {
      res.add('Student ${i + 1} score is ${array[i]} and grade is A');
    } else if (array[i] >= bestScore - 20) {
      res.add('Student ${i + 1} score is ${array[i]} and grade is B');
    } else if (array[i] >= bestScore - 30) {
      res.add('Student ${i + 1} score is ${array[i]} and grade is C');
    } else if (array[i] >= bestScore - 40) {
      res.add('Student ${i + 1} score is ${array[i]} and grade is D');
    } else {
      res.add('Student ${i + 1} score is ${array[i]} and grade is F');
    }
  }
  return res;
}
