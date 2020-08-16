library flutter_auto_scale;
import 'dart:core';
import 'package:flutter/material.dart';

class FAScale {

  static double _screenWidth = 1080.0;
  static double _screenHeight = 1920.0;

  FAScale(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    _screenWidth = mediaQuery.size.width;
    _screenHeight = mediaQuery.size.height;
  }

  double getWidth(double percentage) => _screenWidth * (percentage / 100);

  double getHeight(double percentage) => _screenHeight * (percentage / 100);

  double scale(double percentage) => percentage / 100 * (getHeight(percentage) + getWidth(percentage));

}
