
import 'package:dio/dio.dart';
import 'package:e_commerce/core/constants.dart';
import '../domain/banner_api.dart';

class BannerAPIImpl implements BannerAPI{
  final dio = Dio(BaseOptions(baseUrl: "${apiBaseAPIUrl}products/"));
  @override
  Future<Response> getProductById(String id) async {
    final result = await dio.get(id);
    return result;
  }

  @override
  Future<Response> getProducts(int offset, int limit) async {
    // TODO: implement getProductsByCategory
    throw UnimplementedError();
  }

  @override
  Future<Response> getProductsByCategory(String id) async {
    // TODO: implement getProductsByCategory
    throw UnimplementedError();
  }

  @override
  Future<Response> getProductsBySearch(String id) async {
    // TODO: implement getProductsBySearch
    throw UnimplementedError();
  }

}
