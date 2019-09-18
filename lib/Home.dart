import 'package:flutter/material.dart';
import 'package:fluttergram/Pallete.dart';
import 'package:fluttergram/SocialFeeds/SocialFeeds.dart';
import 'locale/en.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallete.white,
      bottomSheet: BottomSheet(
        backgroundColor: ColorPallete.white,
        elevation: 10,
        builder: (BuildContext context) => Container(
          height: 50,
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(Icons.home),
              Icon(Icons.search),
              Icon(Icons.add),
              Icon(Icons.thumb_up),
              Icon(Icons.supervised_user_circle)
            ],
          ),
        ),
        onClosing: () {},
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
        title: Text(
          getMessages()['appName'],
          style: TextStyle(
              fontFamily: 'LobsterTwo',
              fontSize: 20,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: SocialFeeds(),
    );
  }
}
