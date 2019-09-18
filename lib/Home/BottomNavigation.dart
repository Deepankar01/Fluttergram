import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            Icons.home,
            size: 30,
          ),
          Icon(
            Icons.search,
            size: 30,
          ),
          Icon(
            Icons.add_circle_outline,
            size: 30,
          ),
          Icon(
            Icons.favorite,
            size: 30,
          ),
          // Icon(Icons.favorite_border),
          Icon(
            Icons.face,
            size: 30,
          )
        ],
      ),
    );
  }
}
