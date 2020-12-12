import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyTodo2 extends StatelessWidget {
  Map<String, dynamic> _cardTodos = {
    "count": 3,
    "todos": [
      {
        "id": "1",
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
        "id": "3",
        "note": "I use facebook",
        "task": "Facebook",
        "complet": false
      }
    ],
  };

  List _todos = List();
  @override
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(builder: (context, snapshot) {
      return Scaffold(
        body: ListView.builder(
            itemCount: _cardTodos['count'],
            itemBuilder: (BuildContext context, int i) {
              return CheckboxListTile(
                value: _todos.contains(_cardTodos['todos'][i]['id']),
                onChanged: (bool selected) =>
                    _onCategorySelected(selected, _cardTodos['todos'][i]['id']),
                title: Text(_cardTodos['todos'][i]['note']),
              );
            }),
        floatingActionButton: FloatingActionButton(
          onPressed: () => BlocProvider(create: null),
          tooltip: 'Add Todo',
          child: Icon(Icons.add),
        ),
      );
    });
  }
}
