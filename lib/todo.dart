import 'package:equatable/equatable.dart';

class Todo extends Equatable {
  final bool complete;
  final String note;
  final String task;
  final int id;

  Todo(this.complete, this.id, this.note, this.task);
  @override
  List<Object> get props => [complete, note, task, id];
}
