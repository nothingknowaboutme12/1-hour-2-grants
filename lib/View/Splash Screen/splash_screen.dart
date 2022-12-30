import 'dart:async';

import 'package:cdb/Utiles/utilies.dart';
import 'package:cdb/View/Screen/main_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
        (Route<dynamic> route) => false,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Container(
              height: size.width > 600 ? size.height / 4 : size.height / 5,
              width: size.width > 600 ? size.width / 3 : size.width / 1.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: backgroundColor,
                image: const DecorationImage(
                    image: AssetImage("assets/logo.png"), fit: BoxFit.fill),
              ),
            ),
            SizedBox(
              height: size.height / 40,
            ),
            Text(
              "I Hour 2 Grants",
              style: TextStyle(
                  letterSpacing: 1.2,
                  wordSpacing: 1.2,
                  fontWeight: FontWeight.bold,
                  // color: listtilecolor,
                  fontSize: size.width > 600 ? size.width / 14 : size.width / 9,
                  color: Colors.white),
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width > 600.0 ? 24 : 16.0,
                    vertical: size.width > 600.0 ? 8 : 5),
                child: Text(
                  "Draft Developer Dr. Barbara Wright",
                  style: TextStyle(
                      letterSpacing: 1.2,
                      wordSpacing: 1.2,
                      fontWeight: FontWeight.bold,
                      fontSize: size.width > 600 ? 15 : 10,
                      color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
