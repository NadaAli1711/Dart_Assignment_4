void main() {
  List<int> array = [1, 9, 0, 5, 4, 2];
  //this check if we take input from user and entered less than two elements but we used dummy int array
  if (array.length < 2) {
    print('array must include at least two elements');
  }
  print(getSecondSmallest(selectionSort(array)));
}

int getSecondSmallest(List<int> array) {
  return array[1];
}
//sort the array using selection sort
List<int> selectionSort(List<int> array) {
  for (int i = 0; i < array.length; i++) {
    int min = i;
    for (int j = i + 1; j < array.length; j++) {
      if (array[min] > array[j]) {
        min = j;
      }
    }
    int temp = array[min];
    array[min] = array[i];
    array[i] = temp;
  }
  return array;
}