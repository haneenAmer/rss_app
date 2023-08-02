import 'package:flutter/material.dart';
import 'package:rrs_app/utils/constants.dart';

import 'navigation_bar.dart';

class OnBoarding extends StatelessWidget {
  OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(children: [
          Container(
            width: double.infinity,
            child: const Image(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/onboarding.png')),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                  Colors.grey.withOpacity(0.5),
                  Colors.black.withOpacity(0.5),
                ],
                    stops: const [
                  0.0,
                  2.0
                ],
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    tileMode: TileMode.repeated)),
            width: double.infinity,
            child: const Image(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/linearlayer.png')),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  'مرحبا بك الى عالم المطاعم ',
                  style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                VerticalSpace(12),
                const Text(
                  'ستجد المطعم المناسب خلال دقائق ',
                  style: TextStyle(
                      fontFamily: 'Tajawal', fontSize: 18, color: Colors.white),
                ),

                //VerticalSpace(10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(370, 60)),
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.greenMain),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0)),
                      ),
                      overlayColor:
                          MaterialStateProperty.all(AppColors.greenMain),
                    ),
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => NavBar()),
                        (Route<dynamic> route) => false,
                      );
                    },
                    child: const Text('ابدأ التصفح',
                        style: TextStyle(
                            fontFamily: 'Tajawal',
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                  ),
                )
                // TextButton(
                //     style: const ButtonStyle(),
                //     onPressed: () {
                //       Navigator.pushAndRemoveUntil(
                //         context,
                //         MaterialPageRoute(builder: (context) => NavBar()),
                //         (Route<dynamic> route) => false,
                //       );
                //     },
                //     child: Container(
                //       alignment: Alignment.center,
                //       height: 70,
                //       width: 350,
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(12),
                //         color: AppColors.greenMain,
                //       ),
                //       child: const Text('ابدأ التصفح',
                //           style: TextStyle(
                //               fontFamily: 'Tajawal',
                //               color: Colors.black,
                //               fontSize: 20,
                //               fontWeight: FontWeight.bold)),
                //     )),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
