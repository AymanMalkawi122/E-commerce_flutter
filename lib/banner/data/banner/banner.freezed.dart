// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SaleBanner _$SaleBannerFromJson(Map<String, dynamic> json) {
  return _SaleBanner.fromJson(json);
}

/// @nodoc
mixin _$SaleBanner {
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleBannerCopyWith<SaleBanner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleBannerCopyWith<$Res> {
  factory $SaleBannerCopyWith(
          SaleBanner value, $Res Function(SaleBanner) then) =
      _$SaleBannerCopyWithImpl<$Res, SaleBanner>;
  @useResult
  $Res call({String? url});
}

/// @nodoc
class _$SaleBannerCopyWithImpl<$Res, $Val extends SaleBanner>
    implements $SaleBannerCopyWith<$Res> {
  _$SaleBannerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaleBannerImplCopyWith<$Res>
    implements $SaleBannerCopyWith<$Res> {
  factory _$$SaleBannerImplCopyWith(
          _$SaleBannerImpl value, $Res Function(_$SaleBannerImpl) then) =
      __$$SaleBannerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url});
}

/// @nodoc
class __$$SaleBannerImplCopyWithImpl<$Res>
    extends _$SaleBannerCopyWithImpl<$Res, _$SaleBannerImpl>
    implements _$$SaleBannerImplCopyWith<$Res> {
  __$$SaleBannerImplCopyWithImpl(
      _$SaleBannerImpl _value, $Res Function(_$SaleBannerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$SaleBannerImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaleBannerImpl implements _SaleBanner {
  const _$SaleBannerImpl({required this.url});

  factory _$SaleBannerImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaleBannerImplFromJson(json);

  @override
  final String? url;

  @override
  String toString() {
    return 'SaleBanner(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaleBannerImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaleBannerImplCopyWith<_$SaleBannerImpl> get copyWith =>
      __$$SaleBannerImplCopyWithImpl<_$SaleBannerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaleBannerImplToJson(
      this,
    );
  }
}

abstract class _SaleBanner implements SaleBanner {
  const factory _SaleBanner({required final String? url}) = _$SaleBannerImpl;

  factory _SaleBanner.fromJson(Map<String, dynamic> json) =
      _$SaleBannerImpl.fromJson;

  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$SaleBannerImplCopyWith<_$SaleBannerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
