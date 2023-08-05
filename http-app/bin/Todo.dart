class Todo {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  Todo.jsonDecode(dynamic map) {
    userId = map["userId"] as int;
    id = map["id"] as int;
    title = map['title'] as String;
    completed = map['completed'] as bool;
  }

  @override
  String toString() {
    return 'Todo {userId: $userId,id : $id,title:$title ,completed: $completed}';
  }
}
