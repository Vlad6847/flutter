import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final Function action;

  Answer({@required this.text, @required this.action});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        onPressed: action,
        child: Text(text),
      ),
    );
  }
}
