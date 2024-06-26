
import 'package:e_commerce/core/network/network_result.dart';
import '../data/banner_list/banner_list.dart';

abstract class BannerRepository {
  Future<NetworkResult<BannerList>> getBanners();
}
