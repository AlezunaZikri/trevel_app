import 'package:aspen_project/splash/components/body.dart';
import 'package:flutter/material.dart';

class AspenScreen extends StatelessWidget {
  static String routeName = "/aspen";
  const AspenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}