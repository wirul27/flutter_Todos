part of 'todo_bloc.dart';

abstract class TodoEvent extends Equatable {
  const TodoEvent();

  @override
  List<Object> get props => [];
}

class TodosloadSuccess extends TodoEvent {}

class TodoAdded extends TodoEvent {
  final Todo todo;
  TodoAdded(this.todo);
  @override
  List<Todo> get props => [todo];
}

class TodoDelete extends TodoEvent {
  final int todo;
  TodoDelete(this.todo);
  @override
  List<int> get props => [todo];
}
