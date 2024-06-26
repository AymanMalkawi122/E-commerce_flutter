
import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner.freezed.dart';
part 'banner.g.dart';

@freezed
class SaleBanner with _$SaleBanner {
  const factory SaleBanner({
    required String? url,
  }) = _SaleBanner;

  factory SaleBanner.fromJson(Map<String, dynamic> json) => _$SaleBannerFromJson(json);
}
