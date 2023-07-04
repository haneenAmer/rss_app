import 'package:flutter/material.dart';
import 'package:rrs_app/ui/screens/home_screen.dart';
import 'package:rrs_app/ui/screens/navigation_bar.dart';
import 'package:rrs_app/ui/screens/onboarding_screen.dart';
import 'package:rrs_app/ui/screens/resturant_details.dart';
import 'package:rrs_app/ui/screens/signin_screen.dart';
import 'package:rrs_app/ui/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_constructors
      home: OnBoarding(),
    );
  }
}
