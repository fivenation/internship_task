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

import '../../data/datasourse/guests/local/guests_hive_local.dart' as _i7;
import '../../data/datasourse/guests/local/guests_local_interface.dart' as _i6;
import '../../data/datasourse/guests/remote/guests_api_interface.dart' as _i3;
import '../../data/datasourse/guests/remote/guests_firebase_api.dart' as _i4;
import '../../data/datasourse/guests/remote/guests_test_api.dart' as _i5;
import '../../data/datasourse/place/remote/place_api_interface.dart' as _i11;
import '../../data/datasourse/place/remote/place_firebase_api.dart' as _i12;
import '../../data/datasourse/place/remote/place_test_api.dart' as _i13;
import '../../data/datasourse/wishlist/remote/wishlist_api_interface.dart'
    as _i17;
import '../../data/datasourse/wishlist/remote/wishlist_firebase_api.dart'
    as _i18;
import '../../data/datasourse/wishlist/remote/wishlist_test_api.dart' as _i19;
import '../../data/repository/guests/guests_api_local_repository.dart' as _i9;
import '../../data/repository/guests/guests_online_repository.dart' as _i10;
import '../../data/repository/place/place_api_local_repository.dart' as _i15;
import '../../data/repository/place/place_online_repository.dart' as _i16;
import '../../data/repository/wishlist/wishlist_api_local_repository.dart'
    as _i21;
import '../../data/repository/wishlist/wishlist_online_repository.dart' as _i22;
import '../bloc/guest_bloc/guest_bloc.dart' as _i23;
import '../bloc/place_bloc/place_bloc.dart' as _i24;
import '../bloc/wishlist_bloc/wishlist_bloc.dart' as _i25;
import '../repository/guests_repository_interface.dart' as _i8;
import '../repository/place_repository_interface.dart' as _i14;
import '../repository/wishlist_repository_interface.dart' as _i20;

const String _prod = 'prod';
const String _dev = 'dev';
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
    gh.factory<_i3.GuestApi>(
      () => _i4.GuestsFirebaseApi.init(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i3.GuestApi>(
      () => _i5.GuestTestApi(),
      registerFor: {_test},
    );
    gh.factoryAsync<_i6.GuestLocal>(
      () => _i7.GuestHiveLocal.create(),
      registerFor: {
        _prod,
        _dev,
      },
    );
    gh.factoryAsync<_i8.GuestRepository>(
      () async => _i9.GuestApiLocalRepository(
        gh<_i3.GuestApi>(),
        await getAsync<_i6.GuestLocal>(),
      ),
      registerFor: {
        _prod,
        _dev,
      },
    );
    gh.factory<_i8.GuestRepository>(
      () => _i10.GuestApiRepository(gh<_i3.GuestApi>()),
      registerFor: {_test},
    );
    gh.factory<_i11.PlaceApi>(
      () => _i12.PlaceFirebaseApi.init(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i11.PlaceApi>(
      () => _i13.PlaceTestApi(),
      registerFor: {_test},
    );
    gh.factory<_i14.PlaceRepository>(
      () => _i15.PlaceApiLocalRepository(gh<_i11.PlaceApi>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i14.PlaceRepository>(
      () => _i16.PlaceApiRepository(gh<_i11.PlaceApi>()),
      registerFor: {_test},
    );
    gh.factory<_i17.WishlistApi>(
      () => _i18.WishlistFirebaseApi.init(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i17.WishlistApi>(
      () => _i19.PlaceTestApi(),
      registerFor: {_test},
    );
    gh.factory<_i20.WishlistRepository>(
      () => _i21.WishlistApiLocalRepository(gh<_i17.WishlistApi>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i20.WishlistRepository>(
      () => _i22.WishlistApiRepository(gh<_i17.WishlistApi>()),
      registerFor: {_test},
    );
    gh.singletonAsync<_i23.GuestBloc>(
      () async => _i23.GuestBloc(await getAsync<_i8.GuestRepository>()),
      registerFor: {
        _prod,
        _dev,
        _test,
      },
    );
    gh.singleton<_i24.PlaceBloc>(
      _i24.PlaceBloc(gh<_i14.PlaceRepository>()),
      registerFor: {
        _prod,
        _dev,
        _test,
      },
    );
    gh.singleton<_i25.WishlistBloc>(
      _i25.WishlistBloc(gh<_i20.WishlistRepository>()),
      registerFor: {
        _prod,
        _dev,
        _test,
      },
    );
    return this;
  }
}
