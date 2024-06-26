
import 'package:e_commerce/product/data/product/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_list.freezed.dart';
part 'product_list.g.dart';
@freezed
class ProductList with _$ProductList {
  const factory ProductList({
    @JsonKey(name: "products")
    List<Product>? data,
  }) = _ProductList;

  factory ProductList.fromJson(Map<String, dynamic> json) => _$ProductListFromJson(json);
}