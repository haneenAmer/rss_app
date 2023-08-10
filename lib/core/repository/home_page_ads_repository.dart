import 'package:dio/dio.dart';
import 'package:rrs_app/core/models/home_page_ads.dart';
import 'package:rrs_app/core/service/home_page_ads.dart';

class HomePageAdsRepository {
  HomePageAdsRepository();

  HomePageAdsServices homePageAdsServices =
      HomePageAdsServices('https://rrs-app-zcfos.ondigitalocean.app/hpa');

  Future<HomePageAds> getHomePageAdsModels() async {
    try {
      var json = await homePageAdsServices.homePageAdsResponse();
      HomePageAds homePageAds = HomePageAds.fromJson(json);
      return homePageAds;
    } catch (e) {
      rethrow;
    }
  }
}
