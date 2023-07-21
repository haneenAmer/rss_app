import 'package:flutter/material.dart';

class AppColors {
  static const Color greenMain = Color(0xffBEF22E);
  static const Color greyBackground = Color(0xffEFF3F6);
  static const Color whiteMain = Color(0xffFFFFFF);
  static const Color blackMain = Color(0xff000000);
  static const Color greyBorder = Color(0xffA0AEC0);
}

// ignore: constant_identifier_names
const TextStyle HeadTextStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  fontFamily: 'Tajawal',
  color: Colors.black,
);
const TextStyle HeadTextStyleWhite = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  fontFamily: 'Tajawal',
  color: Colors.white,
);

// ignore: constant_identifier_names
const TextStyle BodyTextStyle = TextStyle(
  fontSize: 16,
  //fontWeight: FontWeight.bold,
  fontFamily: 'Tajawal',
  height: 1.5,
  color: Colors.black,
);

// ignore: constant_identifier_names
const TextStyle SmallTextStyle = TextStyle(
  fontSize: 12,
  //fontWeight: FontWeight.bold,
  fontFamily: 'Tajawal',
  height: 1.5,
  color: Colors.black,
);

// ignore: non_constant_identifier_names
Widget VerticalSpace(double height) {
  return SizedBox(
    height: height,
  );
}

// ignore: non_constant_identifier_names
SizedBox HorizantalSpace(double width) {
  return SizedBox(
    width: width,
  );
}
