// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:client/data/local/cache.dart' as _i7;
import 'package:client/data/repositories/auth_repository_impl.dart' as _i9;
import 'package:client/di/firebase_module.dart' as _i13;
import 'package:client/di/local_module.dart' as _i14;
import 'package:client/domain/repositories/auth_repository.dart' as _i8;
import 'package:client/presentation/auth_login/bloc/auth_login_bloc.dart'
    as _i12;
import 'package:client/presentation/auth_verify/bloc/auth_verify_bloc.dart'
    as _i10;
import 'package:client/presentation/splash/bloc/splash_bloc.dart' as _i11;
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_core/firebase_core.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  Future<_i1.GetIt> initialize({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseModule = _$FirebaseModule();
    final localModule = _$LocalModule();
    await gh.factoryAsync<_i3.FirebaseApp>(
      () => firebaseModule.firebaseInit,
      preResolve: true,
    );
    gh.factory<_i4.FirebaseAuth>(() => firebaseModule.firebaseAuth);
    gh.factory<_i5.FirebaseFirestore>(() => firebaseModule.firebaseFirestore);
    await gh.factoryAsync<_i6.SharedPreferences>(
      () => localModule.sharedPreferences,
      preResolve: true,
    );
    gh.factory<_i7.Cache>(() => _i7.Cache(gh<_i6.SharedPreferences>()));
    gh.factory<_i8.AuthRepository>(() => _i9.AuthRepositoryImpl(
          gh<_i4.FirebaseAuth>(),
          gh<_i7.Cache>(),
        ));
    gh.factory<_i10.AuthVerifyBloc>(
        () => _i10.AuthVerifyBloc(gh<_i8.AuthRepository>()));
    gh.factory<_i11.SplashBloc>(
        () => _i11.SplashBloc(gh<_i8.AuthRepository>()));
    gh.factory<_i12.AuthLoginBloc>(
        () => _i12.AuthLoginBloc(gh<_i8.AuthRepository>()));
    return this;
  }
}

class _$FirebaseModule extends _i13.FirebaseModule {}

class _$LocalModule extends _i14.LocalModule {}
