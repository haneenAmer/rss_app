import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rrs_app/core/models/meals.dart';
import 'package:rrs_app/core/provider/id_provider.dart';
import 'package:rrs_app/core/repository/meals_repostory.dart';

final mealsFutureProvider = FutureProvider.autoDispose((ref) {
  Future<Meals> meals;
  final MealsReposiory mealsRepository =
      MealsReposiory(ref.watch(idProvider.notifier).state ?? '');

  meals = mealsRepository.getMealsModel();
  print("i am here 3");
  return meals;
});
