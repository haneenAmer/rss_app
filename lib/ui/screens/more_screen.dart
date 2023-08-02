import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MoreScreen extends StatelessWidget {
  MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: Container(
        //     child: RatingBar.builder(
        //   initialRating: 1,
        //   minRating: 1,
        //   direction: Axis.horizontal,
        //   allowHalfRating: true,
        //   itemCount: 5,
        //   itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
        //   itemBuilder: (context, _) => const Icon(
        //     Icons.star,
        //     color: Colors.amber,
        //   ),
        //   onRatingUpdate: (rating) {
        //     print(rating);
        //   },
        // )),
        );
  }
}
