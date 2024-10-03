import 'package:aspen_project/home/home_screen.dart';
import 'package:aspen_project/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {

  AspenScreen.routeName: (context) => const AspenScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),

};
