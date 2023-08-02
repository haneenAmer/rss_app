import 'package:flutter/material.dart';
import 'package:rrs_app/ui/screens/raiting_screen.dart';
import 'package:rrs_app/utils/constants.dart';

import '../widgets/widgets.dart';
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
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 7),
                height: 13,
                width: 15,
                decoration: BoxDecoration(
                    color: AppColors.greyBackground.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(12)),
                child: Icon(
                  size: 20,
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                ))),
        actions: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 7),
            height: 13,
            width: 40,
            decoration: BoxDecoration(
                color: AppColors.greyBackground.withOpacity(0.8),
                borderRadius: BorderRadius.circular(12)),
            child: IconButton(
              onPressed: isToggeled,
              icon: (isFavorited
                  ? const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  : const Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    )),
            ),
          ),
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
                child: ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: SingleChildScrollView(
                    controller: controller,
                    child: Column(
                        //mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              /// Name of rsturant
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Transform.translate(
                                      offset: const Offset(0, 2),
                                      child: Text(
                                        '3.6',
                                        style: BodyTextStyle,
                                      )),
                                ],
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
                                          borderRadius:
                                              BorderRadius.circular(8),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  for (int i = 0; i < isThere.length; i++)
                                    Text(
                                      isThere[i],
                                      style: BodyTextStyle,
                                    ),
                                  // const Icon(iconsList[i]),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const Divider(
                            thickness: 2,
                            color: AppColors.greyBorder,
                          ),
                          const SizedBox(
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
                              child: const Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Text(
                                    'يقع المطعم في اليرموك اربع شوارع يحتوي على باركنك مجاني وكدز ايريا واراكيل طيبة وبعدددد مادري شنو ',
                                    style: BodyTextStyle,
                                    textAlign: TextAlign.right,
                                  ))),

                          //////////---------- menu ---------------

                          const SizedBox(
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
                                child: const Text(
                                  ' المزيد',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 61, 152, 227),
                                      fontFamily: 'Tajawal',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Text(
                                'قائمة الطعام ',
                                textAlign: TextAlign.start,
                                style: HeadTextStyle,
                              ),
                            ],
                          ),
                          GridView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              padding: EdgeInsets.zero,
                              itemCount: images.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisExtent: 208,
                              ),
                              itemBuilder: (context, i) {
                                return Container(
                                  margin: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: AppColors.whiteMain),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 100,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              const BorderRadius.vertical(
                                                  top: Radius.circular(7)),
                                        ),
                                        child: MyCashedNetworkImage(
                                            image: images[i]),
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
                                        height: 0,
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
                        ]),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingButton(context),
    );
  }
}

FloatingActionButton FloatingButton(BuildContext context) {
  return FloatingActionButton.extended(
    splashColor: AppColors.greenMain,
    onPressed: () {
      Navigator.of(context).push(createRoute(RaitingScreen()));
    },
    label: const Text(
      'قيم المطعم الان ',
      textAlign: TextAlign.center,
      style: HeadTextStyle,
    ),
    backgroundColor: AppColors.greenMain,
  );
}

List images = [
  'https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8N3x8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.pexels.com/photos/327158/pexels-photo-327158.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8N3x8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
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

List<String> isThere = [
  'موقف سيارات',
  'العاب للاطفال',
  'تراس',
];

List<IconData> iconsList = [
  Icons.toys,
  Icons.home,
  Icons.car_repair,
];
