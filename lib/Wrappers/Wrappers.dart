import 'package:flutter/material.dart';
import 'package:fluttergram/Pallete.dart';

wrapWithSafeArea(Widget toWrap, {Color bgColor = ColorPallete.white}) {
  return Container(
    color: bgColor,
    child: SafeArea(
      left: false,
      right: false,
      child: toWrap,
    ),
  );
}
