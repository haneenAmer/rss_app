import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rrs_app/ui/widgets/widgets.dart';
import 'package:rrs_app/utils/constants.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class SeachScreen extends StatefulWidget {
  const SeachScreen({Key? key}) : super(key: key);

  @override
  State<SeachScreen> createState() => _SeachScreenState();
}

class _SeachScreenState extends State<SeachScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyBackground,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: const Column(children: [
          SeachWidget(),

          ////// POPULAR RESTURANT
          MyGridView(),
        ]),
      ),
    );
  }
}

class SeachWidget extends StatelessWidget {
  const SeachWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, left: 12, right: 12),
      child: Container(
        height: 50,
        width: 385,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: AppColors.whiteMain),
        child: const ListTile(
          trailing: Icon(Icons.search),
          title: Text(
            'ابحث عن مطعمك المفضل',
            style: BodyTextStyle,
            textAlign: TextAlign.end,
          ),
        ),
      ),
    );
  }
}

class MyGridView extends StatelessWidget {
  const MyGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController controlller = ScrollController();
    return Expanded(
      child: ScrollConfiguration(
        behavior: MyBehavior(),
        child: GridView.builder(
            controller: controlller,
            padding: EdgeInsets.zero,
            physics: const ScrollPhysics(),
            itemCount: images.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 200,
            ),
            itemBuilder: (context, i) {
              return Stack(children: [
                // TODO: Implement error handling for this function.
                Container(
                  width: 200,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color.fromARGB(255, 192, 184, 184),
                  ),
                  child: MyCashedNetworkImage(image: images[i]),
                ),
                Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                          colors: [
                            Colors.grey.withOpacity(0.5),
                            Colors.black.withOpacity(0.5),
                          ],
                          stops: const [
                            -1.0,
                            2.0
                          ],
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          tileMode: TileMode.repeated)),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      nameOfResturantsList[i],
                      style: HeadTextStyleWhite,
                    ),
                  ),
                )
              ]);
            }),
      ),
    );
  }
}

List images = [
  'https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8N3x8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8N3x8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
      'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8N3x8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
];
List<String> nameOfResturantsList = [
  'مطعم سويا',
  'مطعم بيت حلب',
  'مطعم رويال  ',
  'مطعم سويا',
  'مطعم رويال  ',
  'مطعم سويا',
  'مطعم رويال  ',
  'مطعم بيت حلب'
];
