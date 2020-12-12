import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyTodo extends StatefulWidget {
  @override
  _MyTodo createState() => new _MyTodo();
}

class _MyTodo extends State<MyTodo> {
  Map<String, dynamic> _cardTodos = {
    "count": 5,
    "todos": [
      {
        "id": "1srg",
        "note": "Angular is good.",
        "task": "Angular",
        "complet": false
      },
      {
        "id": "2",
        "note": "I like youtube.",
        "task": "Youtube",
        "complet": false
      },
      {
        "id": "3adeg",
        "note": "I use facebook",
        "task": "Facebook",
        "complet": false
      },
      {
        "id": "1",
        "note": "Angular is good.",
        "task": "Angular",
        "complet": false
      },
      {"id": "3", "note": "123", "task": "Facebook", "complet": false}
    ],
  };

  List _todos = List();

  void _onCategorySelected(bool selected, id) {
    if (selected == true) {
      setState(() {
        _todos.add(id);
      });
    } else {
      setState(() {
        _todos.remove(id);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (ListView.builder(
          itemCount: _cardTodos['count'],
          itemBuilder: (BuildContext context, int i) {
            return Dismissible(
              key: ValueKey(_cardTodos['todos']),
              child: CheckboxListTile(
                value: _todos.contains(_cardTodos['todos'][i]['id']),
                onChanged: (bool selected) {
                  _onCategorySelected(selected, _cardTodos['todos'][i]['id']);
                },
                title: Text(_cardTodos['todos'][i]['note']),
              ),
            );
          })),
      floatingActionButton: FloatingActionButton(
        onPressed: () => BlocProvider(create: null),
        tooltip: 'Add Todo',
        child: Icon(Icons.add),
      ),
    );
  }
}
