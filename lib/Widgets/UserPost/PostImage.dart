import 'package:flutter/material.dart';

class PostImage extends StatelessWidget {
  final Uri image;
  PostImage({this.image});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          color: Colors.red,
          width: MediaQuery.of(context).size.width,
          height: 100,
        ),
      ],
    );
  }
}
