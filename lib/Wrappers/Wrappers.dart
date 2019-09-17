import 'package:flutter/material.dart';

wrapWithSafeArea(Widget toWrap) {
  return SafeArea(
    left: false,
    right: false,
    child: toWrap,
  );
}
