import 'package:flutter/material.dart';
import 'package:rrs_app/utils/constants.dart';

import 'navigation_bar.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(children: [
          Container(
            width: double.infinity,
            child: Image(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/onboarding.png')),
          ),
          Container(
            width: double.infinity,
            child: Image(
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
                Text(
                  'ستجد المطعم المناسب خلال دقايق ',
                  style: TextStyle(
                      fontFamily: 'Tajawal', fontSize: 18, color: Colors.white),
                ),
                VerticalSpace(12),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NavBar()),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.greenMain,
                      ),
                      child: Text('ابدأ التصفح',
                          style: TextStyle(
                              fontFamily: 'Tajawal',
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    )),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
