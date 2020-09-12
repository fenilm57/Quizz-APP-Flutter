import 'package:flutter/material.dart';
import './main.dart';

class Answers extends StatelessWidget {
  final Function clicked;
  final String ans;
  Answers(this.clicked, this.ans);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: clicked,
        child: Text(ans),
        color: Colors.blue,
      ),
    );
  }
}
