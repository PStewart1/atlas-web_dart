/// Basic user class. contains [name], [age], [height], and [toJson].
class User {
  /// [User]'s name.
  String name;
  /// [User]'s age 
  int age;
  /// [User]'s height
  double height;

  User({required this.name, required this.age, required this.height});
  /// Returns a map representation of the User
  Map toJson() => { 'name': name, 'age': age, 'height': height };
}
