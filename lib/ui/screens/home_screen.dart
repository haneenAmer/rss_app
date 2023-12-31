import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rrs_app/core/models/categories.dart';
import 'package:rrs_app/core/models/home_page_ads.dart';
import 'package:rrs_app/core/revierpod/categories.dart';
import 'package:rrs_app/ui/screens/profile.dart';
import 'package:rrs_app/ui/screens/resturant_details_screen.dart';
import 'package:rrs_app/ui/widgets/widgets.dart';
import 'package:rrs_app/utils/constants.dart';
import '../../core/repository/categories.dart';
import '../../core/revierpod/home_page_ads.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  HomePageAds? homePageAds;

  Categories? categories;
  @override
  bool isError = false;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    //HomePageAds? homePageAds;
    ref.watch(homePageAdsFutureProvider).when(
      data: (data) {
        homePageAds = data;
        isError = false;
      },
      error: (_, __) {
        isError = true;
      },
      loading: () {
        isLoading = true;
      },
    );
    ref.watch(categoriesProvider).when(
      data: (data) {
        categories = data;
        isError = false;
      },
      error: (_, __) {
        isError = true;
      },
      loading: () {
        isLoading = true;
      },
    );

    return MaterialApp(
      home: Scaffold(
          backgroundColor: AppColors.greyBackground,
          appBar: AppBar(
            actions: [HeaderComponentText('تقييم المطاعم')],
            leading: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
              child: const Icon(
                Icons.person,
                color: AppColors.blackMain,
                size: 30.0,
              ),
            ),
            backgroundColor: AppColors.whiteMain,
            // elevation: 0,
          ),
          body: ScrollConfiguration(
            behavior: MyBehavior(),
            child: ListView(scrollDirection: Axis.vertical, children: [
              Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: ScrollConfiguration(
                      behavior: MyBehavior(),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 5),
                        child: Container(
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color.fromARGB(255, 202, 200, 200),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ImageSlideshow(
                                  indicatorColor: AppColors.greenMain,
                                  onPageChanged: (value) {
                                    debugPrint('Page changed: $value');
                                  },
                                  autoPlayInterval: 3000,
                                  isLoop: true,
                                  children: [
                                    if (homePageAds?.data == null)
                                      Image.asset('assets/images/pla.png')
                                    else
                                      for (int i = 0;
                                          i < homePageAds!.data.length;
                                          i++)
                                        MyCashedNetworkImage(
                                            image: homePageAds?.data[i].image ??
                                                ''),
                                  ]),
                            )),
                      )),
                ),

                ///--------------- categories ---------------
                SizedBox(
                    height: 150,
                    width: double.infinity,
                    child: ScrollConfiguration(
                      behavior: MyBehavior(),
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.only(top: 8),
                          itemCount: images.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 202, 200, 200),
                                    // borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: MyCashedNetworkImage(
                                      image:
                                          categories?.data[index].image ?? ''),
                                ),
                                Text(
                                  foodHomeList[index],
                                  style: const TextStyle(fontFamily: 'Tajawal'),
                                ),
                              ],
                            );
                          }),
                    )),
                const SizedBox(
                  height: 12,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'المطاعم الاكثر زيارة',
                    style: HeadTextStyle,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                containerList(images.length, images, nameOfResturantsList),
              ]),
            ]),
          )),
    );
  }

  Widget containerList(
      int number, List<String> images, List<String> nameOfResturantsList) {
    List<Widget> containerList = [];
    for (var i = 0; i < number; i++) {
      containerList.add(GestureDetector(
          onTap: () {
            //ref.read(idProvider.notifier).state= data[i].tlantId;
            Navigator.of(context).push(createRoute(ResturantDetailss()));
          },
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  height: 190,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 202, 200, 200),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(8)),
                  ),
                  child: MyCashedNetworkImage(image: images[i]),
                ),
                VerticalSpace(12),
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
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
  'https://img.freepik.com/free-vector/burger-modern-logo_1361-271.jpg?size=626&ext=jpg&ga=GA1.1.45384623.1648037117&semt=ais',
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

List<String> Ads = [
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC4Truc01jVBFa_baSwBdMG-2oaGOZyVynQ80t3CDj_8xPw9fRy-M5NCKHr_p3buMU6Nc&usqp=CAU',
  'https://img.freepik.com/free-vector/flat-design-fast-food-facebook-template_23-2149135961.jpg?size=626&ext=jpg&ga=GA1.1.45384623.1648037117&semt=ais',
  'https://img.freepik.com/free-vector/flat-design-tasty-food-facebook-template_23-2149122705.jpg?size=626&ext=jpg&ga=GA1.1.45384623.1648037117&semt=ais',
];
List<String> foodHomeList = [
  'حلويات ',
  'سلطات',
  'همبركر',
  'زنجر',
  'بيتزا',
  'كيك',
];
