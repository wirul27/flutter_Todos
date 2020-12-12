import 'dart:convert';

List<Todo> todoFromJson(String str) =>
    List<Todo>.from(json.decode(str).map((x) => Todo.fromJson(x)));
String todoToJson(List<Todo> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Todo {
  final bool complete;
  final String note;
  final String task;
  final String id;

  Todo({this.complete, this.id, this.note, this.task});
  factory Todo.fromJson(Map<String, dynamic> json) => Todo(
      complete: json["complete"],
      id: json["id"],
      note: json["note"],
      task: json["task"]);
  Map<String, dynamic> toJson() =>
      {"complete": complete, "id": id, "note": note, "task": task};
}
