import 'package:http/http.dart' as http;
import 'dart:convert';
/// Prints all Rick and Morty Characters.
/// Uses the dart http package to get data from rick & morty api
Future<void> printRmCharacters() async {
  try {
    // first we use the Uri parser to create the link
    var link = Uri.parse('https://rickandmortyapi.com/api/character');
    // then send and await the request, using the http package
    var str = await http.read(link);
    // next we convert the json string to a map, to make it easier to work with
    var characterMap = json.decode(str) as Map<String, dynamic>;
    // and we extract the "results" section, which contains a List of maps
    var characterList = characterMap['results'];
    // each map contains the character details, so we can iterate through each one,
    for (var character in characterList) {
      // and print their name.
      print(character['name']);
    }
  } catch (e) {
    // print error message
    print('error caught: $e');
  }
}
