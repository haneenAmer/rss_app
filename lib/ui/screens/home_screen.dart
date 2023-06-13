import 'package:flutter/material.dart';
import 'package:rrs_app/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: AppColors.greyBackground,
      appBar: AppBar(
        actions: [
          Text('مستكشف المطاعم', style: OptionStyle),
        ],
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 30.0),
          child: Icon(
            Icons.person,
            color: AppColors.blackMain,
            size: 30.0,
          ),
        ),
        backgroundColor: AppColors.greyBackground,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              //image: DecorationImage(
              //image: AssetImage('assets/images/ads.jpg'),
              // fit: BoxFit.fill,
              // ),
              color: Colors.amber,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          HorizantalSpace(12),
          Container(
              //margin: const EdgeInsets.symmetric(vertical: 8.0),
              //padding: EdgeInsets.only(left: 12),
              height: 100,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(8),
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(4),
                            // image: DecorationImage(
                            //  image: AssetImage('assts/images/ads.jpg'))
                          ),
                        ),
                        VerticalSpace(12),
                      ],
                    );
                  })),
        ]),
      ),
    ));
  }
}
