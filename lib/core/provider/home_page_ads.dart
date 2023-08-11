import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rrs_app/core/models/home_page_ads.dart';
import 'package:rrs_app/core/repository/home_page_ads_repository.dart';

final homePageAdsFutureProvider = FutureProvider.autoDispose((ref) {
  Future<HomePageAds> homePageAds;
  final HomePageAdsRepository homePageAdsRepository = HomePageAdsRepository();

  homePageAds = homePageAdsRepository.getHomePageAdsModels();
  print("hi");
  return homePageAds;
});
