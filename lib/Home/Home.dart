import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttergram/Home/BottomNavigation.dart';
import 'package:fluttergram/Pallete.dart';
import 'package:fluttergram/SocialFeeds/SocialFeeds.dart';
import 'package:fluttergram/locale/en.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallete.white,
      bottomSheet: BottomSheet(
        backgroundColor: ColorPallete.white,
        elevation: 10,
        builder: (BuildContext context) => BottomNavigation(),
        onClosing: () {},
      ),
      appBar: AppBar(
        backgroundColor: ColorPallete.white,
        primary: true,
        actions: <Widget>[
          Container(
            width: 30,
            margin: EdgeInsets.only(right: 10),
            child: SvgPicture.asset(
              'assets/icons/tv.svg',
            ),
          ),
          Container(
            width: 50,
            child: InkWell(
              onTap: () {},
              child: Transform.rotate(
                child: Icon(
                  Icons.send,
                  size: 30,
                  color: ColorPallete.blackWithAccent,
                ),
                angle: ((pi / 180) * -30),
              ),
            ),
          )
        ],
        leading: Container(
          padding: EdgeInsets.all(12),
          child: SvgPicture.asset(
            'assets/icons/logo.svg',
          ),
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
