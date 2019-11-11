import 'package:flutter/material.dart';
import 'package:fluttergram/Widgets/UserPost/UserPost.dart';

class SocialFeeds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return UserPost();
      },
    );
  }
}
