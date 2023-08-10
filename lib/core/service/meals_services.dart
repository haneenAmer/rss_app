import 'package:dio/dio.dart';

class MealsServicies {
  final String endpoint;

  MealsServicies(this.endpoint);
  Dio dio = Dio();

  Future mealsResponse() async {
    try {
      final response = await dio.get(endpoint,
          options: Options(
              headers: {"tenantId": "00d3531e-126a-4397-abfd-ba473ac2255d"}));
      print("i am here ${response.data}");
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
