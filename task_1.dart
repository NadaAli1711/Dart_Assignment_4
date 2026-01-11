void main() {
  List<int> array = [8, 0, 1, 5];
  print(checkExistanceLinear(array, 0));
  print(checkExistanceBinary(array, 0));
}
// using linear search
String checkExistanceLinear(List<int> array, int target) {
  for (int i = 0; i < array.length; i++) {
    if (array[i] == target) {
      return 'Yes';
    }
  }
  return 'No';
}
//using binary search
String checkExistanceBinary(List<int> array, int target) {
  int start = 0;
  int end = array.length - 1;
  while (end >= start) {
    int mid = (start + end) ~/ 2;
    if (array[mid] == target) {
      return 'Yes';
    } else if (target > array[mid]) {
      start = mid + 1;
    } else {
      end = mid - 1;
    }
  }
  return 'No';
}
