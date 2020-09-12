import 'package:flutter/material.dart';

class Reset extends StatelessWidget {
  final Function reset;
  Reset(this.reset);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: RaisedButton(
        child: Text('Click To play Again!!'),
        onPressed: reset,
        color: Colors.amber[400],
      ),
    );
  }
}
