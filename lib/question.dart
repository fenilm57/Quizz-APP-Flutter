import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // int index;
  final String que;
  Question(this.que);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Text(
        que,
        style: TextStyle(fontSize: 26),
      ),
    );
  }
}
