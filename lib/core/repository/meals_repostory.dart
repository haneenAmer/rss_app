import 'package:rrs_app/core/service/meals_services.dart';

import '../models/meals.dart';

class MealsReposiory {
  final String id;
  MealsReposiory(this.id);

  Future<Meals> getMealsModel() async {
    MealsServicies mealsServicies =
        MealsServicies('https://rrs-app-zcfos.ondigitalocean.app/meals', id);

    try {
      final json = await mealsServicies.mealsResponse();
      Meals meals = Meals.fromJson(json);
      print(" i am here 2${meals.data}");
      return meals;
    } catch (e) {
      rethrow;
    }
  }
}
