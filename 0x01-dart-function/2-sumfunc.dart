int add(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

String showFunc(int a, int b) {
  String results = 'Add $a + $b = ' + add(a, b).toString() + '\n';
  results += 'Sub $a - $b = ' + sub(a, b).toString();
  return results;
}
