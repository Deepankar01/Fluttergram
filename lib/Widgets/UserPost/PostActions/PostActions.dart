import 'package:flutter/material.dart';

import 'BookMarkPost.dart';
import 'CommentPost.dart';
import 'LikePost.dart';

class PostActions extends StatelessWidget {
  final bool isLiked;
  final bool isBookmarked;
  PostActions({this.isLiked, this.isBookmarked});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        LikePost(
          isLiked: this.isLiked,
        ),
        CommentPost(),
        BookMarkPost(isBookmarked: this.isBookmarked),
      ],
    );
  }
}
