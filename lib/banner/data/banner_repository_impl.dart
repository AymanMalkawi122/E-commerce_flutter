
import 'package:e_commerce/core/network/network_result.dart';
import 'package:e_commerce/core/network/perform_request.dart';
import 'package:e_commerce/product/domain/product_api.dart';
import 'package:injectable/injectable.dart';
import '../../di/injection.dart';
import '../domain/banner_repository.dart';
import 'banner/banner.dart';
import 'banner_list/banner_list.dart';

class BannerRepositoryImpl implements BannerRepository {
  final ProductAPI _productAPI = getIt<ProductAPI>();

  @override
  Future<NetworkResult<BannerList>> getBanners() {
    return performRequest(
        getBanners.toString(),
            () => _productAPI.getProducts(1, 1),
        (res) => BannerList.fromJson(res.data)

    );
  }

}

@Injectable(as: BannerRepository, env: [Environment.dev, Environment.prod, Environment.test])
class BannerRepositoryMock implements BannerRepository {

  @override
  Future<NetworkResult<BannerList>> getBanners() async {
    final banners = [
      const SaleBanner(url: "https://marketplace.canva.com/EAFxnNPk5SE/1/0/400w/canva-hC4tM6gwtSc.jpg"),
      const SaleBanner(url: "https://marketplace.canva.com/EAEtySEi2iE/2/0/1600w/canva-mu6DvcH3QH0.jpg"),
      const SaleBanner(url: "https://marketplace.canva.com/EAFrit8ZkYU/1/0/800w/canva-xbvBpHPcHgo.jpg"),
      const SaleBanner(url: "https://marketplace.canva.com/EAFKG4KiOj4/1/0/800w/canva-e5SrVc2B21g.jpg"),
    ];

    return Success(BannerList(data: banners));
  }

}