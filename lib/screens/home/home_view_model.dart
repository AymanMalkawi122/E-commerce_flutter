
import 'package:e_commerce/banner/domain/banner_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../banner/data/banner/banner.dart';
import '../../core/presentation/base_view_model.dart';
import '../../di/injection.dart';
import '../../product/data/product/product.dart';
import '../../product/domain/product_repository.dart';

part 'home_view_model.freezed.dart';

class HomeViewModel extends BaseViewModel<HomeEvent, HomeState> {
  final productRepository = getIt<ProductRepository>();
  final bannerRepository = getIt<BannerRepository>();

  HomeViewModel() : super(const HomeState()) {
    add(GetProducts());
    add(GetBanners());
  }
  @override
  Future<BaseState<HomeState>> handleEvent(HomeEvent event) async {
    switch (event) {
      case GetProducts():
        {
          final result = await productRepository.getProducts(10, 30);
          return state.handleNetworkResult(
              result, (products) {
                if (products.data == null) { return state.data; }

                return state.data.copyWith(products: products.data);
              }
          );
        }
      case PaginateProducts():
      case GetBanners():
        {
          final result = await bannerRepository.getBanners();
          return state.handleNetworkResult(
              result, (banners) {
            if (banners.data == null) { return state.data; }
            return state.data.copyWith(banners: banners.data!);
          });
        }
    }
    return state;
  }
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    List<Product>? products,
    List<SaleBanner>? banners
  }) = _HomeState;
}

abstract class HomeEvent {}
class GetProducts implements HomeEvent {}
class PaginateProducts implements HomeEvent {}
class GetBanners implements HomeEvent {}