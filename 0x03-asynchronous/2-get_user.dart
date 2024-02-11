import '2-util.dart';
/// Returns a future string representing the user. Awaits [fetchUser]
Future<void> getUser() async {
  try {
    // [fetchUser] allegedly returns a string, though we know we wont end up using it.
    String str = await fetchUser();
  } catch (e) {
    // print error message and error.
    print('error caught: $e');
  }
}