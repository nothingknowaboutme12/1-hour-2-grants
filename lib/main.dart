import 'package:cdb/View/Splash%20Screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "CDB",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      // home: CLayout(
      //   mobileScreenLayout: SplashScreen(),
      //   WebScreenLayout: Scaffold(
      //     body: Center(
      //       child: Text("I am on the web"),
      //     ),
      //   ),
      // ),
    );
  }
}
