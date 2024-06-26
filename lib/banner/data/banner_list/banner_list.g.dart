// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BannerListImpl _$$BannerListImplFromJson(Map<String, dynamic> json) =>
    _$BannerListImpl(
      data: (json['banners'] as List<dynamic>?)
          ?.map((e) => SaleBanner.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BannerListImplToJson(_$BannerListImpl instance) =>
    <String, dynamic>{
      'banners': instance.data,
    };
