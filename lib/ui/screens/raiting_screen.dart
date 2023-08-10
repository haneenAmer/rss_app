import 'package:flutter/material.dart';
import 'package:rrs_app/ui/screens/resturant_details_screen.dart';
import 'package:rrs_app/utils/constants.dart';
import '../widgets/widgets.dart';

class RaitingScreen extends StatelessWidget {
  const RaitingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,

        floatingActionButton: Padding(
          padding: const EdgeInsets.all(18.0),
          child: FloatingButton(context),
        ),
        appBar: AppBar(backgroundColor: AppColors.whiteMain, actions: [
          HeaderComponentText('قيم المطعم'),
        ]),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                  height: 230,
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: questionsOfRaiting.length,
                      itemBuilder: (BuildContext, int) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RaitingWidget(),
                              Text(
                                questionsOfRaiting[int],
                                style: BodyTextStyle,
                              ),
                            ],
                          ),
                        );
                      })),
              SizedBox(
                  height: 250,
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: questionsOfRaiting.length,
                      itemBuilder: (BuildContext, int) {
                        return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  questionsOfRaitingYN[int],
                                  style: BodyTextStyle,
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                YNanswers(),
                              ],
                            ));
                      })),
              //Align(alignment: Alignment.bottomRight, child: backFBA()),
              Row(
                children: [
                  FloatingButton(context),
                ],
              ),
            ],
          ),
        ),

        backgroundColor: AppColors.greyBackground,
        //body
      ),
    );
  }
}

Padding YNanswers() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 80.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {},
          child: Text(
            'نعم',
            style: BodyTextStyle,
          ),
        ),
        Container(
          height: 20,
          width: 2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: AppColors.greenMain),
        ),
        Text(
          'لا',
          style: BodyTextStyle,
        ),
      ],
    ),
  );
}

List<String> questionsOfRaiting = [
  'تقييم الاكل ',
  'تقيم النظافة',
  'تقييم سرعة تجهيز الطلب',
  'تقييم الخدمة',
  'تقيم المكان',
  'تقييم الاسعار',
];
List<String> questionsOfRaitingYN = [
  ' هل يحتوي المطعم على موقف سيارات ',
  ' هل يحتوي المطعم على مساحة لعب الاطفال  ',
  ' هل يحتوي المطعم على شرفة خارجية  ',
];
FloatingActionButton FloatingButton(BuildContext context) {
  return FloatingActionButton.extended(
    splashColor: AppColors.greenMain,
    onPressed: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => ResturantDetailss()));
    },
    label: Text(
      'موافق',
      textAlign: TextAlign.center,
      style: HeadTextStyle,
    ),
    backgroundColor: AppColors.greenMain,
  );
}

Align backFBA(BuildContext context) {
  return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.only(top: 185, right: 20),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ResturantDetailss()),
            );
          },
          child: Container(
            alignment: Alignment.center,
            height: 50,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.greyBackground,
                border: Border.all(color: AppColors.greenMain, width: 2)),
            child: const Text(
              'رجوع',
              textAlign: TextAlign.center,
              style: BodyTextStyle,
            ),
          ),
        ),
      ));
}

Align FBA() {
  return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.greenMain,
          // border: Border.all(color: AppColors.greenMain, width: 2)
        ),
        child: const Text(
          'موافق',
          textAlign: TextAlign.center,
          style: BodyTextStyle,
        ),
      ));
}
