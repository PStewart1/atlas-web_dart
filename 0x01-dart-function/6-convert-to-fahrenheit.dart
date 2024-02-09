/// accepts a list of doubles representing a list of temperatures in celsius, converts them to fahrenheit and returns them in a list.
List<double> convertToF(List<double> temperaturesInC) {

  // List of temperatures in Farenheit, as doubles rounded to 2 decimal places
  List<double> temperaturesInF = [];
  // loop through list
  for (double i in temperaturesInC) {
    // calculate farenheit temp
    i = (i * 9 / 5) + 32;
    // temperature rounded, as a string.
    String temp = i.toStringAsFixed(2);
    // convert back to double, and add to list
    temperaturesInF.add(double.parse(temp));
  }
  return temperaturesInF;
}
