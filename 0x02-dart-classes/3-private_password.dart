/// Basic Password class. contains the [password], [isValid] which checks it,
/// and a custom [toString].
class Password {
  Password({required String password}) {
    this._password = password;
  }
  /// a "private" password
  late String _password;
  /// checks if the password is the correct length, has upppercase, lowercase, and a number.
  bool isValid() { 
    if (_password.length >= 8 && _password.length <= 16) {
      RegExp exp = RegExp(r"[A-Z]+[a-z]+\d+");
      return exp.hasMatch(_password);
    }
    return false;
  }
  /// a custom toString message
  @override
  String toString() => 'Your Password is: $_password';
}
