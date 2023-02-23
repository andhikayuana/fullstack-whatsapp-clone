import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:client/domain/repositories/auth_repository.dart';
import 'package:client/presentation/auth_verify/bloc/auth_verify_event.dart';
import 'package:client/presentation/auth_verify/bloc/auth_verify_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthVerifyBloc extends Bloc<AuthVerifyEvent, AuthVerifyState> {
  final AuthRepository _authRepository;
  Timer? _timer;

  AuthVerifyBloc(this._authRepository)
      : super(AuthVerifyState.initial(
            phoneNumber: _authRepository.getNeedVerify()?.phoneNumber ?? '')) {
    //todo
    // _setupCountDownTimer();

    on<AuthVerifyEvent>(
      (AuthVerifyEvent event, emit) {
        //todo this, since bloc 8, default concurent not sequential

        event.when(
          onCodeChanged: (smsCode) {
            emit(state.copyWith(smsCode: smsCode, loading: false));
          },
          onResendSmsClicked: () {
            // _timer?.cancel();
            // emit(state.copyWith(loading: true));
            // await _authRepository.sendSmsCode(phoneNumber: state.phoneNumber);
            emit(state.copyWith(countDown: 60, loading: false));
            // _setupCountDownTimer();
          },
          onCountDownTicked: (nextCountDown) {
            emit(state.copyWith(countDown: nextCountDown, loading: false));
          },
          onNextClicked: () async {
            // _timer?.cancel();
            // emit(state.copyWith(loading: true));
            await _authRepository.verifySmsCode(smsCode: state.smsCode);
            // await Future.delayed(Duration(seconds: 5));
            emit(state.copyWith(loading: false, verificationCompleted: true));
          },
        );
      },
      transformer: sequential(),
    );
  }

  void _setupCountDownTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final nextCountDown = state.countDown - 1;
      add(AuthVerifyEvent.onCountDownTicked(
        nextCountDown: nextCountDown,
      ));
      if (nextCountDown < 1) {
        _timer?.cancel();
      }
    });
  }
}
