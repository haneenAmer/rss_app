import 'dart:typed_data';

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
          const Text('مستكشف المطاعم', style: OptionStyle),
        ],
        leading: const Padding(
          padding: EdgeInsets.only(bottom: 12.0),
          child: const Icon(
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
        child: ListView(scrollDirection: Axis.vertical, children: [
          Column(children: [
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
            SizedBox(
                height: 150,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.all(8),
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(4),
                              // image: DecorationImage(
                              //  image: AssetImage('assts/images/ads.jpg'))
                            ),
                          ),
                          const Text(
                            'مندي',
                            style: TextStyle(fontFamily: 'Tajawal'),
                          ),
                        ],
                      );
                    })),
            Padding(
              padding: const EdgeInsets.only(left: 230.0),
              child: const Text(
                'المطاعم الاكثر زيارة',
                style: OptionStyle,
              ),
            ),
            SizedBox(
                height: 300,
                width: double.infinity,
                child: ListView.builder(
                    //shrinkWrap: true,
                    // physics:NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(8),
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/ress.jpg'),
                              ),
                            ),
                            VerticalSpace(22),
                            Padding(
                              padding: const EdgeInsets.only(right: 12.0),
                              child: Text('data'),
                            ),
                            VerticalSpace(22),
                            Padding(
                              padding: const EdgeInsets.only(right: 12.0),
                              child: Icon(Icons.star),
                            ),
                          ],
                        ),
                      );
                    })),
          ]),
        ]),
      ),
    ));
  }
}
