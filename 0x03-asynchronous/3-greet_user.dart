import '3-util.dart';
import 'dart:convert';

/// Returns a future string representing the user. Awaits [fetchUserData]
Future<String> greetUser() async {
  try {
    // [fetchUserData] returns a string in json format, but we want only the username.
    String str = await fetchUserData();
    // so we must convert it to a map, in order to easily call it's individual values.
    Map<String, dynamic> map = jsonDecode(str);
    // and then we return the username string, wrapped in a future.
    return Future<String>.value(map['username']);
  } catch (e) {
    // print error message and error.
    return 'error caught: $e';
  }
}

Future<String> loginUser() async {
  try {
    // call checkCredentials to see if user is present
    if (await checkCredentials()) {
      print('There is a user: true');
      // call greetUser to get username and return it
      String name = await greetUser();
      return 'Hello $name';
    }
    // if not, send reject message
    else {
      print('There is a user: false');
      return 'Wrong credentials';
    }
  } catch (e) {
    // print error message and error.
    return 'error caught: $e';
  }
}
