import 'package:cdb/View/Splash%20Screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "1 HOUR 2 GRANTS",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
