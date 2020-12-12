import 'package:flutter/material.dart';
import 'package:flutter_todos/my_stats/my_stats.dart';
import 'package:flutter_todos/my_todo/my_todo%20copy.dart';
import 'package:flutter_todos/my_todo/my_todo.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            body: TabBarView(
              children: [MyTodo(), MyStats()],
            ),
            appBar: AppBar(
              title: Text('Flutter Todos'),
            ),
            bottomNavigationBar: Container(
              child: TabBar(
                tabs: [
                  Tab(child: Text('Todos')),
                  Tab(child: Text('Stats')),
                ],
              ),
              color: Colors.pink,
            ),
          ),
        ));
  }
}
