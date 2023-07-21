import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../screens/favourite_screen.dart';

/// remove blue light
class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}

/// menue ( container image and title with small container and 2 side view)


