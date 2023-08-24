import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rrs_app/core/models/categories.dart';
import 'package:rrs_app/core/repository/categories.dart';

final categoriesProvider = FutureProvider.autoDispose((ref) {
  Future<Categories> categories;
  final CategoriesRepository categoriesRepository = CategoriesRepository();

  categories = categoriesRepository.getCategoriesModel();
  print("hi FROM CATEGORY PROVIDER");
  return categories;
});
