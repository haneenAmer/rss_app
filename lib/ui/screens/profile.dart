import 'package:flutter/material.dart';
import 'package:rrs_app/main.dart';
import 'package:rrs_app/utils/constants.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.greyBackground,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'المعلومات الشخصية ',
                style: HeadTextStyle,
              ),
            )
          ],
          leadingWidth: 80,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'تعديل',
              style: TextStyle(
                  color: AppColors.greenMain,
                  fontFamily: 'Tajawal',
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        backgroundColor: AppColors.greyBackground,
        body: ListView.builder(
          itemCount: informtion.length,
          itemBuilder: (BuildContext, int) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    informtion[int],
                    style: HeadTextStyle,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextField(
                    textAlign: TextAlign.right,
                    //obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: informtionTextField[int],
                      labelStyle: BodyTextStyle,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

List<String> informtion = ['الاسم الاول', 'الاسم الثاني ', 'كلمة السر'];

List<String> informtionTextField = ['Haneen', ' Amer ', '1234578 '];
