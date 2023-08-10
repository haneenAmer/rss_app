import 'package:rrs_app/core/service/restrunt_list_service.dart';

import '../models/restaurant_list.dart';

class RestruntListRepository {
  RestruntListRepository();
//class is responsible for handling the API communication and fetching
//the list of restaurants from a specified URL endpoint.
  final RestaurantsListService restruntListService = RestaurantsListService(
      'https://rrs-app-zcfos.ondigitalocean.app/restaurants');

  Future<RestaurantList> getRestruntListModel() async {
    try {
      /// جبنا البيانات من السيرفرس
      var json = await restruntListService.restaurantsListResponse();

      /// خزناها بالمودل
      RestaurantList restruntList = RestaurantList.fromJson(json);

      /// first ? why not index ?
      print(restruntList.data.first.name?.ar);

      return restruntList;
    } catch (e) {
      rethrow;
    }
  }
}
