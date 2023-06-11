import 'package:flutter/material.dart';

class AppColors {
  static const Color greenMain = Color(0xffBEF22E);
  static const Color greyBackground = const Color(0xffEFF3F6);
  static const Color whiteMain = const Color(0xffFFFFFF);
  static const Color blackMain = const Color(0xff000000);
  static const Color greyBorder = const Color(0xffA0AEC0);
}

const TextStyle OptionStyle = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.w600,
  fontFamily: 'Tajwal',
);

Widget VerticalSpace(height) {
  return SizedBox(
    height: height,
  );
}

Widget HorizantalSpace(width) {
  return SizedBox(
    width: width,
  );
}
