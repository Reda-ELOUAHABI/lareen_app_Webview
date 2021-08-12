// TODO Implement this library.
import 'package:flutter/material.dart';
import 'dart:async';

import 'HomePage.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            // Image.asset(
            //   "assets/images/Logo.png",
            //   height: 120,
            // ),
            Image.network("https://cdn.salla.sa/bjXlj/HTYlZSoraNh8w8ldfOnXW8S42IKW14sPJqyllvPZ.png",
            height: 120,
            ),
            SizedBox(
              height: 80,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          ],
        ),
      ),
    );
  }
}