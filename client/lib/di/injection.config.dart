// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:client/data/repositories/auth_repository_impl.dart' as _i7;
import 'package:client/di/firebase_module.dart' as _i10;
import 'package:client/domain/repositories/auth_repository.dart' as _i6;
import 'package:client/presentation/auth/bloc/auth_bloc.dart' as _i9;
import 'package:client/presentation/splash/bloc/splash_bloc.dart' as _i8;
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_core/firebase_core.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

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
    final appModule = _$AppModule();
    await gh.factoryAsync<_i3.FirebaseApp>(
      () => appModule.firebaseInit,
      preResolve: true,
    );
    gh.factory<_i4.FirebaseAuth>(() => appModule.firebaseAuth);
    gh.factory<_i5.FirebaseFirestore>(() => appModule.firebaseFirestore);
    gh.factory<_i6.AuthRepository>(
        () => _i7.AuthRepositoryImpl(gh<_i4.FirebaseAuth>()));
    gh.factory<_i8.SplashBloc>(() => _i8.SplashBloc(gh<_i6.AuthRepository>()));
    gh.factory<_i9.AuthBloc>(() => _i9.AuthBloc(gh<_i6.AuthRepository>()));
    return this;
  }
}

class _$AppModule extends _i10.AppModule {}
