import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rrs_app/ui/widgets/widgets.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

import '../../utils/constants.dart';

class FavScreen extends StatefulWidget {
  const FavScreen({Key? key}) : super(key: key);

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(backgroundColor: AppColors.whiteMain,
              //elevation: 0,
              actions: [
                HeaderComponentText('قائمة المفضلة'),
              ]),
          backgroundColor: AppColors.greyBackground,
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  flex: 2,
                  child: SizedBox(
                      //height: MediaQuery.of(context).size.height,
                      width: double.infinity,
                      child: ScrollConfiguration(
                        behavior: MyBehavior(),
                        child: ListView.builder(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            itemCount: images.length,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return Card(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Container(
                                      // margin: const EdgeInsets.all(5),
                                      height: 190,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 202, 200, 200),
                                        borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(8)),
                                      ),
                                      child: MyCashedNetworkImage(
                                          image: images[index]),
                                    ),
                                    VerticalSpace(12),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 12.0),
                                      child: Text(
                                        nameOfResturantsList[index],
                                        style: HeadTextStyle,
                                      ),
                                    ),
                                    VerticalSpace(22),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          right: 12.0, bottom: 20),
                                      child: Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      )),
                ),
              ],
            ),
          )),
    );
  }
}

List images = [
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
