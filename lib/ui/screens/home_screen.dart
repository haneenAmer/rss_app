import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:rrs_app/ui/screens/profile.dart';
import 'package:rrs_app/ui/screens/resturant_details.dart';
import 'package:rrs_app/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

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
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 18.0),
            child: Text('مستكشف المطاعم', style: HeadTextStyle),
          ),
        ],
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Profile()),
            );
          },
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
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView(scrollDirection: Axis.vertical, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/ads.png'),
                  fit: BoxFit.fill,
                ),
                color: Color.fromARGB(255, 202, 200, 200),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            SizedBox(
                height: 150,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(top: 8),
                    itemCount: images.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 202, 200, 200),
                              borderRadius: BorderRadius.circular(4),
                              image: DecorationImage(
                                image: NetworkImage(images[index]),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text(
                            'مندي',
                            style: TextStyle(fontFamily: 'Tajawal'),
                          ),
                        ],
                      );
                    })),
            SizedBox(
              height: 12,
            ),
            Text(
              'المطاعم الاكثر زيارة',
              style: HeadTextStyle,
            ),
            SizedBox(
              height: 12,
            ),
            containerList(images.length, images, nameOfResturantsList),
          ]),
        ]),
      ),
    ));
  }

  Widget containerList(
      int number, List<String> images, List<String> nameOfResturantsList) {
    List<Widget> containerList = [];
    for (var i = 0; i < number; i++) {
      containerList.add(GestureDetector(
          onTap: () {
            Navigator.of(context).push(createRoute());
          },
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  // margin: const EdgeInsets.all(5),
                  height: 190,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 202, 200, 200),
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: NetworkImage(images[i]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                VerticalSpace(12),
                Padding(
                  padding: EdgeInsets.only(right: 12.0),
                  child: Text(
                    nameOfResturantsList[i],
                    style: HeadTextStyle,
                  ),
                ),
                VerticalSpace(22),
                const Padding(
                  padding: EdgeInsets.only(right: 12.0, bottom: 20),
                  child: Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
          )));
    }
    return Column(children: containerList);
  }
}

List<String> images = [
  'https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8N3x8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.pexels.com/photos/327158/pexels-photo-327158.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8N3x8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
];
List<String> nameOfResturantsList = [
  'مطعم سويا',
  'مطعم رويال كالاكسي ',
  'مطعم سويا',
  'مطعم رويال كالاكسي ',
  'مطعم سويا',
  'مطعم رويال كالاكسي ',
  'مطعم بيت حلب'
];
Route createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        ResturantDetailss(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
