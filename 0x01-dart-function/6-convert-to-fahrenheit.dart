List<double> convertToF(List<double> temperaturesInC) {
  List<double> temperaturesInF = [];
  for (double i in temperaturesInC) {
    i = (i * 9/5) + 32;
    String num = i.toStringAsFixed(2);
    temperaturesInF.add(double.parse(num));
  }
  return  temperaturesInF;
}