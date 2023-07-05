// ignore_for_file: unnecessary_const
import 'package:flutter/material.dart';
import 'package:rrs_app/utils/constants.dart';

class ResturantDetailss extends StatelessWidget {
  const ResturantDetailss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            const SizedBox(
              height: 300,
              width: double.infinity,
              child: const Image(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/res1.jpg'),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height - 200,
                width: 400,
                decoration: BoxDecoration(
                    color: AppColors.greyBackground,
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SingleChildScrollView(
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            '3.6',
                            style: HeadTextStyle,
                          ),
                          Text(
                            'اسم المطعم ',
                            style: HeadTextStyle,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 125,
                        child: GridView.builder(
                            itemCount: 6,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisExtent: 50,
                            ),
                            itemBuilder: (context, i) {
                              return Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: AppColors.greyBorder,
                                          width: 1.5),
                                      borderRadius: BorderRadius.circular(8),
                                      color: AppColors.whiteMain),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text('الاكل', style: BodyTextStyle),
                                          Text('3/10', style: BodyTextStyle),
                                        ]),
                                  ),
                                ),
                              );
                            }),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.greyBorder, width: 1.5),
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.whiteMain),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('موقف سيارات', style: BodyTextStyle),
                                Text('العاب للاطفال', style: BodyTextStyle),
                                Text(
                                  'ميزة خرى',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Tajawal',
                                    color: Colors.black,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Divider(
                        thickness: 2,
                        color: AppColors.greyBorder,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.greyBorder, width: 1.5),
                              borderRadius: BorderRadius.circular(8),
                              color: AppColors.whiteMain),
                          child: const Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Text(
                                'يقع المطعم في اليرموك اربع شوارع يحتوي على باركنك مجاني وكدز ايريا واراكيل طيبة وبعدددد مادري شنو ',
                                style: BodyTextStyle,
                                textAlign: TextAlign.right,
                              ))),

                      //////////---------- menue ---------------

                      const SizedBox(
                        height: 22,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            ' المزيد',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Color.fromARGB(255, 61, 152, 227),
                                fontFamily: 'Tajawal',
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'قائمة الطعام ',
                            textAlign: TextAlign.start,
                            style: HeadTextStyle,
                          ),
                        ],
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 6,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisExtent: 200,
                            ),
                            itemBuilder: (context, i) {
                              return Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  margin: EdgeInsets.all(8),

                                  //width: 100,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: AppColors.greyBorder,
                                          width: 1.5),
                                      borderRadius: BorderRadius.circular(8),
                                      color: AppColors.whiteMain),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      // ClipRRect(

                                      //   borderRadius: BorderRadius.circular(8),
                                      //   clipBehavior:
                                      //       Clip.antiAliasWithSaveLayer,
                                      //   child: const Image(

                                      //     fit: BoxFit.fitWidth,
                                      //     image: const AssetImage(
                                      //         'assets/images/food.jpg'),
                                      //   ),
                                      // ),

                                      Container(
                                          height: 100,
                                          width: double.infinity,
                                          decoration: const BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.vertical(
                                                top: Radius.circular(8)),
                                          ),
                                          child: const Image(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'assets/images/food.jpg'),
                                          )),

                                      Text(
                                        'اسم الاكلة ',
                                        style: BodyTextStyle,
                                        textAlign: TextAlign.start,
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                    ]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RatingList {
  const RatingList({required this.rating, required this.ratingvalue});
  final String rating;
  final double ratingvalue;
}

const List<RatingList> choices = const <RatingList>[
  RatingList(rating: 'Home', ratingvalue: 4.9),
  const RatingList(rating: 'Contact', ratingvalue: 4.9),
  const RatingList(rating: 'Map', ratingvalue: 4.9),
  const RatingList(rating: 'Phone', ratingvalue: 4.9),
];
