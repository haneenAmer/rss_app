import 'package:flutter/material.dart';
import 'package:rrs_app/ui/screens/onboarding_screen.dart';
import 'package:rrs_app/utils/constants.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 500,
              child: Stack(
                children: [
                  const SizedBox(
                    height: 350,
                    width: 250,
                    child: Image(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/3d.png')),
                  ),
                  const Align(
                    alignment: Alignment.topRight,
                    child: SizedBox(
                      height: 200,
                      width: 200,
                      child: Image(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/2d.png')),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                      ),
                      height: 350,
                      width: 350,
                      child: const Image(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/1d.png')),
                    ),
                  ),
                ],
              ),
            ),
            const Align(
                alignment: Alignment(0.8, 0.5),
                child: Text(
                  'مستكشف المطاعم',
                  style: HeadTextStyle,
                )),
            SizedBox(
              height: 55,
            ),
            TextButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(370, 70)),
                backgroundColor: MaterialStateProperty.all(AppColors.greenMain),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                ),
                overlayColor: MaterialStateProperty.all(AppColors.greenMain),
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => OnBoarding()),
                  (Route<dynamic> route) => false,
                );
              },
              child: const Text(' تسجيل الدخول باستخدام كوكل',
                  style: TextStyle(
                      fontFamily: 'Tajawal',
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
    );
  }
}
