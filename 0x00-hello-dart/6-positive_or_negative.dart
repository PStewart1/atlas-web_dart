void main(List<String> args) {
  var n = args[0];
  if (int.parse(n) < 0) {
    print('$n is negative');
  } else if (int.parse(n) == 0) {
    print('$n is zero');
  } else {
    print('$n is positive');
  }
}
