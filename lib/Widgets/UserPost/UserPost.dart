import 'package:flutter/material.dart';
import 'package:fluttergram/Models/SocialFeed.dart';
import 'package:fluttergram/Widgets/UserPost/PostActions/PostActions.dart';
import 'package:fluttergram/Widgets/UserPost/PostCaptions.dart';
import 'package:fluttergram/Widgets/UserPost/PostTime.dart';

import 'PostLikes.dart';
import 'User.dart';
import 'PostImage.dart';

class UserPost extends StatelessWidget {
  final SocialFeedModel socialFeed;
  UserPost({
    this.socialFeed,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, top: 10),
      child: Column(
        children: <Widget>[
          User(
            user: this.socialFeed.user,
          ),
          PostImage(
            image: this.socialFeed.postImage,
          ),
          PostActions(
              isLiked: this.socialFeed.isLiked,
              isBookmarked: this.socialFeed.isBookMarked),
          PostLikes(),
          PostCaptions(),
          PostTime(postime: this.socialFeed.postedTime),
        ],
      ),
    );
  }
}
