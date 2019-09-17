import 'package:flutter/material.dart';

wrapWithSafeArea(Widget toWrap) {
  return SafeArea(
    child: toWrap,
  );
}
