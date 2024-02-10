/// Basic Password class. contains the [password], [isValid] which checks it,
/// and a custom [toString].
class Password {
  /// the password
  late String password;
  /// checks if the password is the correct length, has upppercase, lowercase, and a number.
  bool isValid() { 
    if (password.length >= 8 && password.length <= 16) {
      RegExp exp = RegExp(r"[A-Z]+[a-z]+\d+");
      return exp.hasMatch(password);
    }
    return false;
  }
  /// a custom toString message
  @override
  String toString() => 'Your Password is: $password';
}
