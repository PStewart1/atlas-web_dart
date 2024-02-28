// dart func to print rick and morty characters
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
    try {
        // store the uri
        var uri = Uri.https('rickandmortyapi.com', '/api/character');
        // get the content there
        var response = await http.get(uri);
        // let's get loopy
        Map<dynamic, dynamic> decodedJson = jsonDecode(response.body);
        List<dynamic> charactersList = decodedJson['results'];
        for (var c in charactersList) {
            print(c['name']);
        }
    } catch (error) {
        print("error caught: ${error}");
    }
}