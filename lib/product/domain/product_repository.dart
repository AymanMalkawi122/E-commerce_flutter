
import 'package:e_commerce/core/network/network_result.dart';
import 'package:e_commerce/product/data/product/product.dart';
import 'package:e_commerce/product/data/product_list/product_list.dart';
import 'package:e_commerce/product/data/product_repository_impl.dart';
import 'package:injectable/injectable.dart';

@injectable
abstract class ProductRepository {
  @factoryMethod
  factory ProductRepository.from() => ProductRepositoryImpl();

  Future<NetworkResult<ProductList>> getProducts(int offset, int limit);
  Future<NetworkResult<Product>> getProductById(String id);
  Future<NetworkResult<ProductList>> getProductsBySearch(String query);
  Future<NetworkResult<ProductList>> getProductsByCategory(String category);
}
