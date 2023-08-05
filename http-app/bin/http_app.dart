import 'package:http/http.dart' as httpClient;
import 'dart:convert' as converter;
import 'dart:io';

import 'Todo.dart';

Future<void> main() async {
  Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/todos");

  try {
    var response = await httpClient.get(uri);
    if (response.statusCode == HttpStatus.ok) {
      String responseBody = response.body;

      List<dynamic> jsonData = converter.jsonDecode(responseBody);
      //Modeling
      List<Todo> todos = [];
      for (var i = 0; i < jsonData.length; i++) {
        todos.add(Todo.jsonDecode(jsonData[i]));
      }

      todos.forEach((todo) => print(todo));
    }
  } on SocketException catch (err) {
    print(err);
  } on FormatException catch (err) {
    print(err);
  }
}
