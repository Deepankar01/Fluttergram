import 'package:flutter/material.dart';
import 'package:fluttergram/Models/SocialFeed.dart';

class User extends StatelessWidget {
  final FeedUserModel user;
  User({this.user});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.brown.shade800,
          child: Text('AH'),
        ),
        Text(user.username),
      ],
    );
  }
}
