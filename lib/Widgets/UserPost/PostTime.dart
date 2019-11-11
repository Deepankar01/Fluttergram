import 'package:flutter/material.dart';

class PostTime extends StatelessWidget {
  final DateTime postime;
  PostTime({this.postime});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[Text(this.postime.toIso8601String())],
    );
  }
}
