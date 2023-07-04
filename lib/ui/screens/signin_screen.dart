import 'package:flutter/material.dart';
import 'package:rrs_app/ui/screens/onboarding_screen.dart';
import 'package:rrs_app/utils/constants.dart';

import 'navigation_bar.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Stack(
          children: [
            Container(
              height: 350,
              width: 250,
              child: const Image(
                  fit: BoxFit.fill, image: AssetImage('assets/images/3d.png')),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 200,
                width: 200,
                child: const Image(
                    fit: BoxFit.fill,
                    image: const AssetImage('assets/images/2d.png')),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                ),
                height: 350,
                width: 350,
                child: const Image(
                    fit: BoxFit.fill,
                    image: const AssetImage('assets/images/1d.png')),
              ),
            ),
            const Align(
                alignment: Alignment(0.8, 0.5),
                child: Text(
                  'مستكشف المطاعم',
                  style: HeadTextStyle,
                )),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OnBoarding()),
                );
              },
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  alignment: Alignment.center,
                  height: 70,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.greenMain,
                  ),
                  child: const Text(' تسجيل الدخول باستخدام كوكل',
                      style: TextStyle(
                          fontFamily: 'Tajawal',
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
