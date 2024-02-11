import '0-util.dart';

Future<void> usersCount() async {
  int num = await fetchUsersCount();
  print(num);
}