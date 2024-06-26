// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:e_commerce/banner/data/banner_repository_impl.dart' as _i7;
import 'package:e_commerce/banner/domain/banner_api.dart' as _i5;
import 'package:e_commerce/banner/domain/banner_repository.dart' as _i6;
import 'package:e_commerce/product/domain/product_api.dart' as _i3;
import 'package:e_commerce/product/domain/product_repository.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

const String _dev = 'dev';
const String _prod = 'prod';
const String _test = 'test';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.ProductAPI>(() => _i3.ProductAPI.from());
    gh.factory<_i4.ProductRepository>(() => _i4.ProductRepository.from());
    gh.factory<_i5.BannerAPI>(() => _i5.BannerAPI.from());
    gh.factory<_i6.BannerRepository>(
      () => _i7.BannerRepositoryMock(),
      registerFor: {
        _dev,
        _prod,
        _test,
      },
    );
    return this;
  }
}
