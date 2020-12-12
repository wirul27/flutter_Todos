import 'package:flutter/cupertino.dart' show StatelessWidget;
import 'package:flutter/material.dart';

class MyStats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Column(
        children: [Text('Complete: ...'), Text('Active Todo: ...')],
      ),
    );
  }
}
