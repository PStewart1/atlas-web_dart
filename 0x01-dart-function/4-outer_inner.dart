void outer(String name, String id) {
  String inner() {
    List nameList = name.split(' ');
    String initial = nameList[1].substring(0,1);
    String firstName = nameList[0];
    return 'Hello Agent $initial.$firstName your id is $id';
  }

  print(inner());
}