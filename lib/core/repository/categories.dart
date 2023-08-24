import 'package:rrs_app/core/models/categories.dart';
import 'package:rrs_app/core/service/categories.dart';

class CategoriesRepository {
  CategoriesRepository();

  CategoriesServices categoriesServices =
      CategoriesServices('https://rrs-app-zcfos.ondigitalocean.app/categories');

  Future<Categories> getCategoriesModel() async {
    try {
      var json = await categoriesServices.categoriesResponse();
      Categories categories = Categories.fromJson(json);
      return categories;
    } catch (e) {
      rethrow;
    }
  }
}
