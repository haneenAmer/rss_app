import 'package:dio/dio.dart';

class CategoriesServices {
  final String endPoint;
  CategoriesServices(this.endPoint);
  final Dio dio = Dio();
  Future categoriesResponse() async {
    try {
      final response = await dio.get(endPoint);
      print(" HI FROM CATEGORIES ${response.data}");
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
