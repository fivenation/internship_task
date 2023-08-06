// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/datasourse/guests/remote/guests_api_interface.dart' as _i3;
import '../../data/datasourse/guests/remote/guests_test_api.dart' as _i4;
import '../../data/datasourse/place/remote/place_api_interface.dart' as _i7;
import '../../data/datasourse/place/remote/place_test_api.dart' as _i8;
import '../../data/datasourse/wishlist/remote/wishlist_api_interface.dart'
    as _i11;
import '../../data/datasourse/wishlist/remote/wishlist_test_api.dart' as _i12;
import '../../data/repository/guests/guests_online_repository.dart' as _i6;
import '../../data/repository/place/place_online_repository.dart' as _i10;
import '../../data/repository/wishlist/wishlist_online_repository.dart' as _i14;
import '../bloc/guest_bloc/guest_bloc.dart' as _i15;
import '../bloc/place_bloc/place_bloc.dart' as _i16;
import '../bloc/wishlist_bloc/wishlist_bloc.dart' as _i17;
import '../repository/guests_repository_interface.dart' as _i5;
import '../repository/place_repository_interface.dart' as _i9;
import '../repository/wishlist_repository_interface.dart' as _i13;

const String _test = 'test';
const String _prod = 'prod';
const String _dev = 'dev';

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
    gh.factory<_i3.GuestApi>(
      () => _i4.GuestTestApi(),
      registerFor: {_test},
    );
    gh.factory<_i5.GuestRepository>(
      () => _i6.GuestApiRepository(gh<_i3.GuestApi>()),
      registerFor: {_test},
    );
    gh.factory<_i7.PlaceApi>(
      () => _i8.PlaceTestApi(),
      registerFor: {_test},
    );
    gh.factory<_i9.PlaceRepository>(
      () => _i10.PlaceApiRepository(gh<_i7.PlaceApi>()),
      registerFor: {_test},
    );
    gh.factory<_i11.WishlistApi>(
      () => _i12.PlaceTestApi(),
      registerFor: {_test},
    );
    gh.factory<_i13.WishlistRepository>(
      () => _i14.WishlistApiRepository(gh<_i11.WishlistApi>()),
      registerFor: {_test},
    );
    gh.singleton<_i15.GuestBloc>(
      _i15.GuestBloc(gh<_i5.GuestRepository>()),
      registerFor: {
        _prod,
        _dev,
        _test,
      },
    );
    gh.singleton<_i16.PlaceBloc>(
      _i16.PlaceBloc(gh<_i9.PlaceRepository>()),
      registerFor: {
        _prod,
        _dev,
        _test,
      },
    );
    gh.singleton<_i17.WishlistBloc>(
      _i17.WishlistBloc(gh<_i13.WishlistRepository>()),
      registerFor: {
        _prod,
        _dev,
        _test,
      },
    );
    return this;
  }
}
