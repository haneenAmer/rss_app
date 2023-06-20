import 'package:flutter/material.dart';
import 'package:rrs_app/utils/constants.dart';

class ResDetails extends StatelessWidget {
  const ResDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.greyBackground,
        body: Stack(children: [
          Container(
            width: double.infinity,
            height: 300,
            child: Image(
                fit: BoxFit.fill, image: AssetImage('assets/images/res1.jpg')),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.greyBackground,
              ),
              height: 400,
              width: 400,
              child: Column(children: [
                /// التقيم
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('3.6', style: OptionStyle),
                      Text(
                        'اسم المطعم ',
                        style: OptionStyle,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.all(8),
                        itemCount: 6,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: 50,
                            width: 100,
                          );
                        })
                  ],
                )
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
