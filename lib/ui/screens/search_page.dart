import 'package:flutter/material.dart';
import 'package:rrs_app/utils/constants.dart';

class SeachScreen extends StatefulWidget {
  const SeachScreen({Key? key}) : super(key: key);

  @override
  State<SeachScreen> createState() => _SeachScreenState();
}

class _SeachScreenState extends State<SeachScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Container(
                height: 50,
                width: 380,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.greyBorder),
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.whiteMain),
                child: const ListTile(
                  trailing: Icon(Icons.search),
                  title: Text(
                    'ابحث عن مطعمك المفضل',
                    style: BodyTextStyle,
                    textAlign: TextAlign.end,
                  ),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: AppColors.greyBackground,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 12,
                  ),

                  ////// POPULAR RESTURANT
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: GridView.builder(
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: images.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisExtent: 200,
                        ),
                        itemBuilder: (context, i) {
                          return Stack(children: [
                            Container(
                              margin: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors.greyBorder, width: 1.5),
                                borderRadius: BorderRadius.circular(8),
                                color: const Color.fromARGB(255, 192, 184, 184),
                                image: DecorationImage(
                                    image: NetworkImage(images[i]),
                                    fit: BoxFit.cover),
                              ),
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
                                        0.0,
                                        2.0
                                      ],
                                      begin: FractionalOffset.topCenter,
                                      end: FractionalOffset.bottomCenter,
                                      tileMode: TileMode.repeated)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
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
                ]),
          ),
        ),
      ),
    );
  }
}

List<String> images = [
  'https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8N3x8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.pexels.com/photos/327158/pexels-photo-327158.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8N3x8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
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
