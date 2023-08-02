import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';
import '../../utils/constants.dart';

/// remove blue light
class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}

ClipRRect MyCashedNetworkImage({required image}) {
  return ClipRRect(
    borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
    child: CachedNetworkImage(
      fit: BoxFit.cover,
      imageUrl: image,
      placeholder: (context, url) => const SimpleCircularProgressBar(
        progressStrokeWidth: 5,
        backStrokeWidth: 5,
        size: 20,
        progressColors: [AppColors.greenMain],
      ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    ),
  );
}

Route createRoute(Widget Screen) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Screen,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

FloatingActionButton FloatingButton(BuildContext context) {
  return FloatingActionButton.extended(
    splashColor: AppColors.greenMain,
    onPressed: () {},
    label: const Text(
      'موافق',
      textAlign: TextAlign.center,
      style: HeadTextStyle,
    ),
    backgroundColor: AppColors.greenMain,
  );
}

Padding HeaderComponentText(String ChangedText) {
  return Padding(
    padding: EdgeInsets.all(18.0),
    child: Text(ChangedText, style: HeadTextStyle),
  );
}

RatingBar RaitingWidget() {
  return RatingBar.builder(
    itemSize: 25,
    initialRating: 1,
    minRating: 1,
    direction: Axis.horizontal,
    allowHalfRating: true,
    itemCount: 5,
    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
    itemBuilder: (context, _) => const Icon(
      Icons.star,
      color: Colors.amber,
    ),
    onRatingUpdate: (rating) {
      print(rating);
    },
  );
}
