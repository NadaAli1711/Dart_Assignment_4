import 'dart:io';

void main() {
  List<int> array = [];
  print('Enter int values to stop enter negative value:');
  while (true) {
    int input = int.parse(stdin.readLineSync()!);
    if (input < 0) break;
    array.add(input);
  }
  int count = 0;
  int size = array.length;
  for (int i = 0; i < size; i++) {
    count += array[i];
  }
  int average = count ~/ size;
  var (above, below, equal) = copareToAverage(array, average);
  print('Above average:$above\nBelow average:$below\nEqual average:$equal');
}

(int above, int below, int equal) copareToAverage(List<int> array,
    int average) {
  int below = 0;
  int above = 0;
  int equal = 0;
  for (int i = 0; i < array.length; i++) {
    if (array[i] > average) {
      above++;
    } else if (array[i] < average) {
      below++;
    } else {
      equal++;
    }
  }
  return (above, below, equal);
}