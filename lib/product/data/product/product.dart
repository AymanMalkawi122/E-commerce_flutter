
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required int? id,
    required String? title,
    required String? description,
    required double? price,
    required double? discountPercentage,
    required double? rating,
    required int? stock,
    required String? brand,
    required String? category,
    required String? thumbnail,
    required List<String>? images,
    required List<String>? tags,
    required String? sku,
    required double? weight,
    required Dimensions? dimensions,
    required String? warrantyInformation,
    required String? shippingInformation,
    required String? availabilityStatus,
    required List<Review>? reviews,
    required String? returnPolicy,
    required int? minimumOrderQuantity,
    required Meta? meta,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

@freezed
class Dimensions with _$Dimensions {
  const factory Dimensions({
    required double? width,
    required double? height,
    required double? depth,
  }) = _Dimensions;

  factory Dimensions.fromJson(Map<String, dynamic> json) => _$DimensionsFromJson(json);
}

@freezed
class Review with _$Review {
  const factory Review({
    required double? rating,
    required String? comment,
    required String? date,
    required String? reviewerName,
    required String? reviewerEmail,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    required String? createdAt,
    required String? updatedAt,
    required String? barcode,
    required String? qrCode,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}