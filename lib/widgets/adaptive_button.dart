import 'package:flutter/material.dart';
import "dart:io";
import "package:flutter/cupertino.dart";

class AdaptiveElevatedButton extends StatelessWidget {
  final String text;
  final Function handler;

  AdaptiveElevatedButton(this.text, this.handler);
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            color: Colors.blue,
            child: Text(
              'Choose Date',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: handler,
          )
        : TextButton(
            style: TextButton.styleFrom(
              primary: Colors.purple,
            ),
            child: Text(
              'Choose Date',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: handler,
          );
  }
}
