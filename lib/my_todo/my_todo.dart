import 'package:flutter/material.dart';

class MyTodo extends StatefulWidget {
  @override
  _MyTodo createState() => new _MyTodo();
}

class _MyTodo extends State<MyTodo> {
  Map<String, dynamic> _cardTodos = {
    "count": 3,
    "todos": [
      {
        "id": 1,
        "note": "Angular is good.",
        "task": "Angular",
        "complet": false
      },
      {"id": 2, "note": "I like youtube.", "task": "Youtube", "complet": false},
      {"id": 3, "note": "I use facebook", "task": "Facebook", "complet": false}
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
    return Center(
      child: ListView.builder(
          itemCount: _cardTodos['count'],
          itemBuilder: (BuildContext context, int index) {
            return CheckboxListTile(
              value: _todos.contains(_cardTodos['todos'][index]['id']),
              onChanged: (bool selected) {
                _onCategorySelected(selected, _cardTodos['todos'][index]['id']);
              },
              title: Text(_cardTodos['todos'][index]['note']),
            );
          }),
    );
  }
}
