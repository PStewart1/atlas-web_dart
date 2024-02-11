import '4-mutables.dart';
void main() {
  final password = Password(password: "azer234ffFF");
  print(password.isValid());
  print(password.toString());
  password.password = "Youssef4321";
  print(password.isValid());
  print(password.toString());
}