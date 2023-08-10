import 'package:dio/dio.dart';

class RestaurantsListService {
  final String endPoint;

  RestaurantsListService(this.endPoint);
  final Dio dio = Dio();

  Future restaurantsListResponse() async {
    try {
      final response = await dio.get(endPoint);
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
