import 'package:flutter/material.dart';
import 'package:fluttergram/Pallete.dart';

class BottomNavigation extends StatelessWidget {
  Widget _navigationBar() {
    return Container(
      height: 60,
      padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
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

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      backgroundColor: ColorPallete.white,
      elevation: 20,
      builder: (BuildContext context) => _navigationBar(),
      onClosing: () {},
    );
  }
}
