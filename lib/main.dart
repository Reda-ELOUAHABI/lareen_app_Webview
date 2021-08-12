import 'package:flutter/material.dart';

import 'SplashScreen.dart';
void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.deepPurple,
    ),
    title: "Lareen Store",
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),

  ));
}