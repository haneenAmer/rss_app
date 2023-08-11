import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rrs_app/core/models/home_page_ads.dart';
import 'package:rrs_app/core/models/meals.dart';
import 'package:rrs_app/core/provider/id_provider.dart';
import 'package:rrs_app/core/repository/home_page_ads_repository.dart';
import 'package:rrs_app/core/repository/meals_repostory.dart';

final homePageAdsFutureProvider = FutureProvider.autoDispose((ref) {
  Future<HomePageAds> homePageAds;
  final HomePageAdsRepository homePageAdsRepository = HomePageAdsRepository();

  homePageAds = homePageAdsRepository.getHomePageAdsModels();
  print("i am here 3");
  return homePageAds;
});
