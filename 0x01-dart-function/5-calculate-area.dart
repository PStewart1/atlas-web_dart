/// returns the area of a triangle given base and height, rounded to decimal places
double calculateArea(double height, double base) {
  
  /// calculated area
  double n = 0.5 * height * base;
  /// rounded area, by using string function
  String num = n.toStringAsFixed(2);
  // convert back to double and return
  return double.parse(num);
}
