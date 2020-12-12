part of 'todo_bloc.dart';

abstract class TodoState extends Equatable {
  const TodoState();

  @override
  List<Object> get props => [];
}

class TodoInitial extends TodoState {}

class TodosLoadSuccess extends TodoState {
  final List<Todo> todos;
  TodosLoadSuccess(this.todos);
  @override
  List<Object> get props => [todos];
}

class TodoLoadFailure extends TodoState {}
