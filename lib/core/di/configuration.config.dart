// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/datasources/local/shared_prefs.dart' as _i4;
import '../../domain/repositories/apps_repository.dart' as _i3;
import '../../presentation/blocs/apps/apps_bloc.dart' as _i5;
import 'modules/bloc_module.dart' as _i8;
import 'modules/repository_module.dart' as _i6;
import 'modules/storage_module.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $configureDependencies(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final repositoryModule = _$RepositoryModule();
  final storageModule = _$StorageModule();
  final blocModule = _$BlocModule();
  gh.lazySingleton<_i3.AppsRepository>(() => repositoryModule.appsRepository());
  await gh.lazySingletonAsync<_i4.SharedPrefs>(
      () => storageModule.sharedPrefs(),
      preResolve: true);
  gh.factory<_i5.AppsBloc>(
      () => blocModule.appsBloc(get<_i3.AppsRepository>()));
  return get;
}

class _$RepositoryModule extends _i6.RepositoryModule {}

class _$StorageModule extends _i7.StorageModule {}

class _$BlocModule extends _i8.BlocModule {}
