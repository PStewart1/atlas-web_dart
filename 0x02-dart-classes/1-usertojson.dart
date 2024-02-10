/// Basic user class. contains a late string [name], and [toJson].
class User {
  /// A name.
  String name;

  int age;

  double height;

  User({required this.name, required this.age, required this.height});
  /// Returns a map representation of the User
  Map toJson() => { 'name': name, 'age': age, 'height': height };
}
