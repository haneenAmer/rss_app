import 'package:dio/dio.dart';

class HomePageAdsServices {
  final String endPoint;

  HomePageAdsServices(this.endPoint);
  final Dio dio = Dio();

  Future homePageAdsResponse() async {
    try {
      final response = await dio.get(endPoint);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
