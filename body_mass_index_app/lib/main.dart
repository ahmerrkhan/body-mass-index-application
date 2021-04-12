import 'package:flutter/material.dart';
import 'SplashScreen.dart';
import 'InputScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BodyMassIndexApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF1f2427),
        scaffoldBackgroundColor: Color(0xff1F2427),
      ),
      home: splashScreen(),
    );
  }
}
