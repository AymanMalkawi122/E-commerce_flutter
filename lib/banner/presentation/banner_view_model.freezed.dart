// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BannerCarouselState {
  List<SaleBanner> get banners => throw _privateConstructorUsedError;
  int get currentBannerIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BannerCarouselStateCopyWith<BannerCarouselState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerCarouselStateCopyWith<$Res> {
  factory $BannerCarouselStateCopyWith(
          BannerCarouselState value, $Res Function(BannerCarouselState) then) =
      _$BannerCarouselStateCopyWithImpl<$Res, BannerCarouselState>;
  @useResult
  $Res call({List<SaleBanner> banners, int currentBannerIndex});
}

/// @nodoc
class _$BannerCarouselStateCopyWithImpl<$Res, $Val extends BannerCarouselState>
    implements $BannerCarouselStateCopyWith<$Res> {
  _$BannerCarouselStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banners = null,
    Object? currentBannerIndex = null,
  }) {
    return _then(_value.copyWith(
      banners: null == banners
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<SaleBanner>,
      currentBannerIndex: null == currentBannerIndex
          ? _value.currentBannerIndex
          : currentBannerIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannerCarouselStateImplCopyWith<$Res>
    implements $BannerCarouselStateCopyWith<$Res> {
  factory _$$BannerCarouselStateImplCopyWith(_$BannerCarouselStateImpl value,
          $Res Function(_$BannerCarouselStateImpl) then) =
      __$$BannerCarouselStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SaleBanner> banners, int currentBannerIndex});
}

/// @nodoc
class __$$BannerCarouselStateImplCopyWithImpl<$Res>
    extends _$BannerCarouselStateCopyWithImpl<$Res, _$BannerCarouselStateImpl>
    implements _$$BannerCarouselStateImplCopyWith<$Res> {
  __$$BannerCarouselStateImplCopyWithImpl(_$BannerCarouselStateImpl _value,
      $Res Function(_$BannerCarouselStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banners = null,
    Object? currentBannerIndex = null,
  }) {
    return _then(_$BannerCarouselStateImpl(
      banners: null == banners
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<SaleBanner>,
      currentBannerIndex: null == currentBannerIndex
          ? _value.currentBannerIndex
          : currentBannerIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BannerCarouselStateImpl implements _BannerCarouselState {
  const _$BannerCarouselStateImpl(
      {required final List<SaleBanner> banners, this.currentBannerIndex = 0})
      : _banners = banners;

  final List<SaleBanner> _banners;
  @override
  List<SaleBanner> get banners {
    if (_banners is EqualUnmodifiableListView) return _banners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_banners);
  }

  @override
  @JsonKey()
  final int currentBannerIndex;

  @override
  String toString() {
    return 'BannerCarouselState(banners: $banners, currentBannerIndex: $currentBannerIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerCarouselStateImpl &&
            const DeepCollectionEquality().equals(other._banners, _banners) &&
            (identical(other.currentBannerIndex, currentBannerIndex) ||
                other.currentBannerIndex == currentBannerIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_banners), currentBannerIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerCarouselStateImplCopyWith<_$BannerCarouselStateImpl> get copyWith =>
      __$$BannerCarouselStateImplCopyWithImpl<_$BannerCarouselStateImpl>(
          this, _$identity);
}

abstract class _BannerCarouselState implements BannerCarouselState {
  const factory _BannerCarouselState(
      {required final List<SaleBanner> banners,
      final int currentBannerIndex}) = _$BannerCarouselStateImpl;

  @override
  List<SaleBanner> get banners;
  @override
  int get currentBannerIndex;
  @override
  @JsonKey(ignore: true)
  _$$BannerCarouselStateImplCopyWith<_$BannerCarouselStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
