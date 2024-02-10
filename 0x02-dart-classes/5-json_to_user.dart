/// Basic user class. contains [name], [age], [height], and [toJson].
class User {
  User({required this.name, required this.age, required this.height, required this.id});
  /// [User]'s name.
  String name;
  /// [User]'s age 
  int age;
  /// [User]'s height
  double height;
  /// [User]'s id
  int id;
  /// Returns a map representation of the User
  Map toJson() => { 'id': id, 'name': name, 'age': age, 'height': height };
  /// Creates a User instane from a json map object
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(name: userJson['name'], age: userJson['age'], height: userJson['height'], id: userJson['id']);
  }
  /// a custom toString message
  @override
  String toString() => 'User(id: $id ,name: $name, age: $age, height: $height)';
}

