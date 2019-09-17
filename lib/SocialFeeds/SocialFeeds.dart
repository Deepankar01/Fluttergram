import 'package:flutter/material.dart';
import 'package:fluttergram/Pallete.dart';
import 'package:fluttergram/locale/en.dart';

class SocialFeeds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallete.white,
      appBar: AppBar(
        backgroundColor: ColorPallete.white,
        textTheme:
            TextTheme(title: TextStyle(color: ColorPallete.blackWithAccent)),
        title: Text(getMessages()['appName']),
      ),
    );
  }
}
