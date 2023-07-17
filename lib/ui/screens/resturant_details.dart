import 'package:flutter/material.dart';
import 'package:rrs_app/utils/constants.dart';

import 'food_menue_more.dart';

class ResturantDetailss extends StatefulWidget {
  const ResturantDetailss({Key? key}) : super(key: key);

  @override
  State<ResturantDetailss> createState() => _ResturantDetailssState();
}

class _ResturantDetailssState extends State<ResturantDetailss> {
  ScrollController controller = ScrollController();
  bool isFavorited = false;
  void isToggeled() {
    setState(() {
      isFavorited = !isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back)),
          actions: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: IconButton(
                  onPressed: isToggeled,
                  icon: (isFavorited
                      ? const Icon(Icons.favorite)
                      : const Icon(Icons.favorite_border)),
                )),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
            //   child: GestureDetector(
            //       onTap: () {
            //         Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //                 builder: ((context) => const FavScreen())));
            //       },
            //       child: Icon(Icons.favorite)),
            // ),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            /// Image of resturant
            const SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/res1.jpg'),
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height - 200,
                width: 400,
                decoration: BoxDecoration(
                    color: AppColors.greyBackground,
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SingleChildScrollView(
                    controller: controller,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          /// Name of rsturant
                          Text(
                            '3.6',
                            style: HeadTextStyle,
                          ),
                          Text(
                            'اسم المطعم ',
                            style: HeadTextStyle,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),

                      /// sections of raiting
                      SizedBox(
                        height: 105,
                        child: GridView.builder(
                            padding: EdgeInsets.zero,
                            itemCount: resturantDetails.length,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisExtent: 50,
                            ),
                            itemBuilder: (context, i) {
                              return Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: AppColors.greyBorder,
                                          width: 1.5),
                                      borderRadius: BorderRadius.circular(8),
                                      color: AppColors.whiteMain),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(resturantDetails[i],
                                              style: BodyTextStyle),
                                          Text(raiting[i],
                                              style: BodyTextStyle),
                                        ]),
                                  ),
                                ),
                              );
                            }),
                      ),

                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.greyBorder, width: 1.5),
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.whiteMain),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('موقف سيارات', style: BodyTextStyle),
                                Text('العاب للاطفال', style: BodyTextStyle),
                                Text('ميزة خرى', style: BodyTextStyle),
                              ]),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Divider(
                        thickness: 2,
                        color: AppColors.greyBorder,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.greyBorder, width: 1.5),
                              borderRadius: BorderRadius.circular(8),
                              color: AppColors.whiteMain),
                          child: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Text(
                                'يقع المطعم في اليرموك اربع شوارع يحتوي على باركنك مجاني وكدز ايريا واراكيل طيبة وبعدددد مادري شنو ',
                                style: BodyTextStyle,
                                textAlign: TextAlign.right,
                              ))),

                      //////////---------- menue ---------------

                      SizedBox(
                        height: 22,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => FoodMenue())));
                            },
                            child: Text(
                              ' المزيد',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 61, 152, 227),
                                  fontFamily: 'Tajawal',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            'قائمة الطعام ',
                            textAlign: TextAlign.start,
                            style: HeadTextStyle,
                          ),
                        ],
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: GridView.builder(
                            padding: EdgeInsets.zero,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: images.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisExtent: 200,
                            ),
                            itemBuilder: (context, i) {
                              return Container(
                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: AppColors.greyBorder,
                                        width: 1.5),
                                    borderRadius: BorderRadius.circular(8),
                                    color: AppColors.whiteMain),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: 100,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(images[i])),
                                        color: Colors.grey,
                                        borderRadius:
                                            const BorderRadius.vertical(
                                                top: Radius.circular(7)),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'اسم الاكلة ',
                                        style: BodyTextStyle,
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 100,
                                      height: 30,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 5,
                                        itemBuilder: (context, int) {
                                          return const Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 18,
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List images = [
  'https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8N3x8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.pexels.com/photos/327158/pexels-photo-327158.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8N3x8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
];

List<String> resturantDetails = [
  'الاكل',
  'السرعة',
  'المكان',
  'النظافة',
  'الخدمة',
  'الاسعار',
];
List<String> raiting = [
  '4.9',
  '4.0',
  '3.9',
  '4.5',
  '3.8',
  '3.1',
];
