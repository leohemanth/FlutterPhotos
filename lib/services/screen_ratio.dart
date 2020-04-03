import 'package:flutter/material.dart';
import '../utils/constants.dart';

class ScreenRatio {
  static double heightRatio;
  static double widthRatio;
  static double screenheight;
  static double screenwidth;
  static double potraitPadding;
  static double landscapePadding;

  static setScreenRatio(
      {double currentScreenHeight, double currentScreenWidth}) {
    BuildContext context;
    Orientation orientation;

    try {
      context = rootNavigatorKey.currentContext;
      orientation = MediaQuery.of(context).orientation;
    } catch (e) {
      print("error here");
    }

    print("hitting here =>  $orientation");
    if (orientation == Orientation.portrait) {
      screenheight = currentScreenHeight;
      screenwidth = currentScreenWidth;
      heightRatio = currentScreenHeight / 812.0;
      widthRatio = currentScreenWidth / 375.0;
    } else {
      screenheight = currentScreenWidth;
      screenwidth = currentScreenHeight;
      heightRatio = currentScreenWidth / 667.0;
      widthRatio = currentScreenHeight / 375.0;
    }
    potraitPadding = 48 * widthRatio;
    landscapePadding = 72 * widthRatio;
  }
}