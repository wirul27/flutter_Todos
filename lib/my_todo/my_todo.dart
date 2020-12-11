import 'package:flutter/cupertino.dart' show StatelessWidget;
import 'package:flutter/material.dart';

class MyTodo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView(
      children: [
        Card(child: Text('abc')),
        Card(child: Text('jef')),
        Card(child: Text('ghi')),
        Card(child: Text('jkl'))
      ],
    ));
  }
}
