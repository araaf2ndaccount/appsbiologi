import 'dart:async';
import 'package:app_biologi/home/homepage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 300,
              height: 250,
              child: Image.asset('assets/images/splash.jpeg'),
            ),
            // Text(
            //   "SELAMAT DATANG",
            //   style: TextStyle(
            //       fontSize: 20, fontFamily: 'BebasNeue', color: Colors.black, fontWeight: FontWeight.bold),
            // )
          ],
        ),
      ),
    );
  }
}
