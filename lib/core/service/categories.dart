import 'package:dio/dio.dart';

class CategoriesServices {
  final String endPoint;

  CategoriesServices(this.endPoint);
  Dio dio = Dio();

  Future categoriesResponse() async {
    try {
      final response = await dio.get(endPoint);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
