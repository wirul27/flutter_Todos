import 'package:flutter_todos/data/todo.dart';

abstract class AlbumsRepo {
  Future<List<Todo>> getTodoList();
}

class AlbumServices implements AlbumsRepo {
  //
  static const _baseUrl = 'jsonplaceholder.typicode.com';
  static const String _GET_TODOS = '/todo';
  @override
  Future<List<Todo>> getTodoList() async {
    Uri uri = Uri.https(_baseUrl, _GET_TODOS);
    Response response = await http.get(uri);
    List<Todo> albums = todoFromJson(response.body);
    return albums;
  }
}
