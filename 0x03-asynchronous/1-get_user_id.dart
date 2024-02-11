import '1-util.dart';
import 'dart:convert';
/// Returns a future string representing the user’s ID. Awaits [fetchUserData]
Future<String> getUserId() async {
  // [fetchUserData] returns a string in json format, but we want only the "id part".
  String str = await fetchUserData();
  // so we must convert it to a map, in order to easily call it's individual values.
  Map<String, dynamic> map = jsonDecode(str);
  // and then we return the id string, wrapped in a future.
  return Future<String>.value(map['id']);
}