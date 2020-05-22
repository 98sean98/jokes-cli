import 'dart:convert';

import 'package:http/http.dart' as http;

class JokesApi {
  static const url = 'https://geek-jokes.sameerkumar.website/api?format=json';

  Future<String> getJoke() async {
    var res = await http.get(url);
    var json = jsonDecode(res.body);
    return json['joke'];
  }
}
