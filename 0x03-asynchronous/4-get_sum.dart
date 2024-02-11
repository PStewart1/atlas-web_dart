import '4-util.dart';
import 'dart:convert';
/// Returns the total price of the user's order.
/// Calls [fetchUserData], [fetchUserOrders], and [fetchProductPrice].
Future<double> calculateTotal() async {
  try {
    // fetchUserData returns a string in json format, but we only want the id
    var str = await fetchUserData();
    // so we must convert it to a map, in order to easily call it's individual values.
    var userMap = jsonDecode(str);
    // then we can easily extract the id
    String id = userMap['id'];
    // and use it to retrieve the user's orders
    String orders = await fetchUserOrders(id);
    // which returns a list, in string form, so again we must convert it to a list
    var orderList = jsonDecode(orders);
    // then we prepare our total price tally
    double total = 0;
    // a forEach loop wont work as it isn't async, but a for-in loop can be.
    for (var item in orderList) {
      // now we can retrieve the price for each order, 
      var priceStr = await fetchProductPrice(item);
      // and add it to our total.
      total += jsonDecode(priceStr);
    };
    // Done and done.
    return total; 
  } catch (e) {
    // return -1 for error.
    return -1;
  }
}
