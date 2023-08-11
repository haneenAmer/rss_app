import 'package:dio/dio.dart';

class MealsServicies {
  final String endpoint;
  final String id;

  MealsServicies(this.endpoint, this.id);
  Dio dio = Dio();

  Future mealsResponse() async {
    try {
      final response =
          await dio.get(endpoint, options: Options(headers: {"tenantId": id}));
      print("i am here ${response.data}");
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
