class FeedUserModel {
  final Uri profilePicUri;
  final String username;
  FeedUserModel({this.profilePicUri, this.username});
}

class CommentModel {
  final FeedUserModel user;
  final String comment;
  final BigInt likesCount;
  final DateTime postedTime;
  final bool isLiked;
  CommentModel(
      {this.comment,
      this.likesCount,
      this.postedTime,
      this.isLiked,
      this.user});
}

class SocialFeedModel {
  final FeedUserModel user;
  final bool isBookMarked;
  final bool isLiked;
  final BigInt likesCount;
  final String caption;
  final BigInt commentsCount;
  final List<CommentModel> comments;
  final DateTime postedTime;
  SocialFeedModel(
      {this.user,
      this.isBookMarked,
      this.isLiked,
      this.comments,
      this.commentsCount,
      this.caption,
      this.likesCount,
      this.postedTime});
}
