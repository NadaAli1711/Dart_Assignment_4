void main() {
  List<int> array = [1, 9, 0, 5, 4, 2];
  print(calcAverage(array));
}

double calcAverage(List<int> array) {
  int size = array.length;
  int count = 0;
  for (int i = 0; i < size; i++) {
    count += array[i];
  }
  return count / size;
}