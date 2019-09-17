import 'package:flutter/material.dart';
import 'package:fluttergram/locale/en.dart';

class SocialFeeds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getMessages()['appName']),
      ),
    );
  }
}
