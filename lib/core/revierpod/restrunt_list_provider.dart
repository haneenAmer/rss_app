import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rrs_app/core/repository/restrunt_list_repository.dart';

import '../models/restaurant_list.dart';

// class RestruntListStateNotifier extends StateNotifier<RestruntList?> {
//   RestruntListStateNotifier() : super(null);
//   final RestruntListRepository restruntListRepository =
//       RestruntListRepository();
//   Future getRestruntList() async {
//     state = await restruntListRepository.getRestruntListModel();
//   }
// }

// final restruntListStateNotifierProvider =
//     StateNotifierProvider<RestruntListStateNotifier, RestruntList?>(
//         (ref) => RestruntListStateNotifier());

final restruntListFutureProvider = FutureProvider.autoDispose((ref) {
  Future<RestaurantList> restruntList;
  final RestruntListRepository restruntListRepository =
      RestruntListRepository();

  restruntList = restruntListRepository.getRestruntListModel();
  return restruntList;
});
