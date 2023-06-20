import 'package:flutter/material.dart';

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
          backgroundColor: AppColors.greyBackground,
          body: Padding(
            padding: const EdgeInsets.only(top: 22.0),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 230.0),
                  child: Text(
                    'المطاعم الاكثر زيارة',
                    style: OptionStyle,
                  ),
                ),
                VerticalSpace(12),
                Expanded(
                  flex: 2,
                  child: SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: double.infinity,
                      child: ListView.builder(
                          padding: const EdgeInsets.all(8),
                          itemCount: 6,
                          shrinkWrap: true,
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
                                      image:
                                          AssetImage('assets/images/ress.jpg'),
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
                ),
              ],
            ),
          )),
    );
  }
}
