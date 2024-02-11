import '0-util.dart';
/// prints the number of users. awaits [fetchUsersCount]
Future<void> usersCount() async {
  int num = await fetchUsersCount();
  print(num);
}