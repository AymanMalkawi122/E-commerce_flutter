
import 'package:freezed_annotation/freezed_annotation.dart';
import '../banner/banner.dart';

part 'banner_list.freezed.dart';
part 'banner_list.g.dart';
@freezed
class BannerList with _$BannerList  {
  const factory BannerList({
    @JsonKey(name: "banners")
    List<SaleBanner>? data,
  }) = _BannerList;

  factory BannerList.fromJson(Map<String, dynamic> json) => _$BannerListFromJson(json);
}