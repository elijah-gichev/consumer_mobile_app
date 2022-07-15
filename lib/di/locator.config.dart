// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import '../data/repository/flats_repository.dart' as _i3;
import '../data/repository/offers_repository.dart' as _i4;
import '../data/repository/user_repository.dart' as _i6;
import '../services/user_service.dart' as _i7;
import 'app_module.dart' as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.singleton<_i3.FlatsRepository>(_i3.FlatsRepository());
  gh.singleton<_i4.OffersRepository>(_i4.OffersRepository());
  await gh.factoryAsync<_i5.SharedPreferences>(() => registerModule.prefs,
      preResolve: true);
  gh.singleton<_i6.UserRepository>(_i6.UserRepository());
  gh.singleton<_i7.UserService>(_i7.UserService());
  return get;
}

class _$RegisterModule extends _i8.RegisterModule {}
