
import 'package:dio/dio.dart';
import 'package:e_commerce/product/data/product_api_impl.dart';
import 'package:injectable/injectable.dart';

@injectable
abstract class ProductAPI {
  @factoryMethod
  factory ProductAPI.from() {
    return ProductAPIImpl();
  }

  Future<Response> getProducts(int offset, int limit);
  Future<Response> getProductById(String id);
  Future<Response> getProductsBySearch(String id);
  Future<Response> getProductsByCategory(String id);
}
