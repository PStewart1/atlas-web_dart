import '6-password.dart';

/// User class, inherits Password class.
/// Contains [name], [age], [height], [user_password], [toJson] and [fromJson], and a custom [toString].
class User extends Password{
  User({required String name, required int age, required double height, required int id,
        required String user_password}) : super(password: user_password) {
    this.name = name;
    this.age = age;
    this.height = height;
    this.id = id;
  }
  /// [User]'s name.
  late String name;
  /// [User]'s age 
  late int age;
  /// [User]'s height
  late double height;
  /// [User]'s id
  late int id;

  /// a getter and setter for the inherited [password]
  String get user_password => password;
  set user_password(String pass) => password = pass; 
  /// Returns a map representation of the User
  Map toJson() => {'id': id, 'name': name, 'age': age, 'height': height};
  /// Creates a User instane from a json map object
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(name: userJson['name'], age: userJson['age'], height: userJson['height'],
      id: userJson['id'], user_password: userJson['user_password']);
  }
  /// a custom toString message
  @override
  String toString() => 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${isValid()}';
}

