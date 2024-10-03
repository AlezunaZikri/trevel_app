import 'package:flutter/material.dart';

class SizeConfig {
  static Orientation orientation = Orientation.portrait;
  static double screenHeight = 0;
  static double screenWidth = 0;

  static MediaQueryData _mediaQueryData = const MediaQueryData();

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout Width that designer use
  return (inputWidth / 375.0) * screenWidth;
}

double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}