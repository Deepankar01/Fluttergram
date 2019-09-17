import 'package:flutter/material.dart';
import 'package:fluttergram/Pallete.dart';
import 'package:fluttergram/SocialFeeds/SocialFeeds.dart';
import 'locale/en.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallete.white,
      bottomSheet: Container(
        color: Colors.red,
        height: 50,
        child: Row(
          children: <Widget>[],
        ),
      ),
      appBar: AppBar(
        backgroundColor: ColorPallete.white,
        primary: true,
        actions: <Widget>[
          Container(
            width: 50,
            color: Colors.indigo,
          ),
          Container(
            width: 50,
            color: Colors.green,
          )
        ],
        leading: Container(
          color: Colors.red,
        ),
        centerTitle: false,
        textTheme:
            TextTheme(title: TextStyle(color: ColorPallete.blackWithAccent)),
        title: Text(getMessages()['appName']),
      ),
      body: SocialFeeds(),
    );
  }
}
