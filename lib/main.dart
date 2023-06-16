import 'package:flutter/material.dart';
import 'package:rrs_app/ui/screens/home_screen.dart';
import 'package:rrs_app/ui/screens/navigation_bar.dart';
import 'package:rrs_app/ui/screens/onboarding_screen.dart';
import 'package:rrs_app/ui/screens/signin_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SigninScreen(),
    );
  }
}
