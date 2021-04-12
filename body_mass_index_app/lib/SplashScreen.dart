import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'InputScreen.dart';


class splashScreen extends StatefulWidget {
  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      backgroundColor: Colors.black,
      image: Image.asset("assets/medical.jpg",),
      photoSize: 200,
      navigateAfterSeconds: InputScreen(),
    );
  }
}
