
import 'package:aspen_project/routes.dart';
import 'package:aspen_project/splash/splash_screen.dart';
import 'package:aspen_project/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData(),
      initialRoute: AspenScreen.routeName,
      routes: routes,
    );
  }
}
