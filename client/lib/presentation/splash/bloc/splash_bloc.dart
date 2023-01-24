import 'dart:async';
import 'package:client/domain/repositories/auth_repository.dart';
import 'package:client/presentation/splash/bloc/splash_event.dart';
import 'package:client/presentation/splash/bloc/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final AuthRepository _authRepository;

  SplashBloc(this._authRepository) : super(Initial()) {
    on<CheckCurrentAccount>(_onCheckCurrentAccount);
  }

  Future<void> _onCheckCurrentAccount(event, emit) async {
    emit(Loading());
    await Future.delayed(const Duration(seconds: 2));
    emit(Loaded(_authRepository.alreadyLogin()));
  }
}
