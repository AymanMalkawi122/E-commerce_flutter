
import 'package:e_commerce/core/network/network_result.dart';
import 'package:e_commerce/core/network/perform_request.dart';
import 'package:e_commerce/product/data/product/product.dart';
import 'package:e_commerce/product/data/product_list/product_list.dart';
import 'package:e_commerce/product/domain/product_api.dart';
import 'package:e_commerce/product/domain/product_repository.dart';
import '../../di/injection.dart';

// @Injectable(as: ProductRepository)
class ProductRepositoryImpl implements ProductRepository {
  final ProductAPI _productAPI = getIt<ProductAPI>();
  @override
  Future<NetworkResult<ProductList>> getProductsByCategory(String category) {
    // TODO: implement getProductById
    throw UnimplementedError();
  }

  @override
  Future<NetworkResult<Product>> getProductById(String id) {
    return performRequest(
      getProductById.toString(),
          () => _productAPI.getProductById(id),
        (res) => Product.fromJson(res.data)
    );
  }

  @override
  Future<NetworkResult<ProductList>> getProductsBySearch(String query) {
    // TODO: implement getProductBySearch
    throw UnimplementedError();
  }

  @override
  Future<NetworkResult<ProductList>> getProducts(int offset, int limit) {
    return performRequest(
        getProducts.toString(),
            () => _productAPI.getProducts(offset, limit),
        (res) => ProductList.fromJson(res.data)

    );
  }

}