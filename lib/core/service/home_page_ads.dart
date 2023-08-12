import 'package:dio/dio.dart';

class HomePageAdsServices {
  final String endPoint;

  HomePageAdsServices(this.endPoint);
  final Dio dio = Dio();

  Future homePageAdsResponse() async {
    try {
      final response = await dio.get(endPoint);
      print("hi ${response.data}");
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
