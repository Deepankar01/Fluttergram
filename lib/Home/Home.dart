import 'package:flutter/material.dart';
import 'package:fluttergram/Home/AppHeader.dart';
import 'package:fluttergram/Home/BottomNavigation.dart';
import 'package:fluttergram/Home/SocialFeeds.dart';
import 'package:fluttergram/Pallete.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallete.white,
      bottomSheet: BottomNavigation(),
      appBar: appHeader(),
      body: SocialFeeds(),
    );
  }
}
