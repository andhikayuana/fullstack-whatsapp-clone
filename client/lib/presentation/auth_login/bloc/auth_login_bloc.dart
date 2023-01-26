import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:client/domain/repositories/auth_repository.dart';
import 'package:client/presentation/auth_login/bloc/auth_login_event.dart';
import 'package:client/presentation/auth_login/bloc/auth_login_state.dart';

@injectable
class AuthLoginBloc extends Bloc<AuthLoginEvent, AuthLoginState> {
  final AuthRepository _authRepository;

  AuthLoginBloc(
    this._authRepository,
  ) : super(const AuthLoginState()) {
    on<OnCountryChanged>(_onCountryChanged);
    on<OnPhoneNumberChanged>(_onPhoneNumberChanged);
    on<OnNextClicked>(_onNextClicked);
    on<OnEditClicked>(_onEditClicked);
    on<OnOkClicked>(_onOkClicked);
    on<OnSmsCodeSent>(_onSmsCodeSent);
    on<OnVerificationFailed>(_onVerificationFailed);
  }

  Future<void> _onOkClicked(OnOkClicked event, emit) async {
    emit(state.copyWith(status: AuthLoginStatus.loading));
    await _authRepository.verifyCode(
      phoneNumber: state.phoneNumberFull,
      onCodeSent: (verificationId, forceResendingToken) =>
          add(OnSmsCodeSent(verificationId, forceResendingToken!)),
      onVerificationFailed: (error) => add(OnVerificationFailed(error)),
    );
  }

  void _onEditClicked(OnEditClicked event, emit) =>
      emit(state.copyWith(status: AuthLoginStatus.stateChanged));

  void _onVerificationFailed(OnVerificationFailed event, emit) =>
      emit(state.copyWith(status: AuthLoginStatus.verificationFailed));

  void _onSmsCodeSent(OnSmsCodeSent event, emit) =>
      emit(state.copyWith(status: AuthLoginStatus.smsCodeSent));

  void _onNextClicked(OnNextClicked event, emit) =>
      emit(state.copyWith(status: AuthLoginStatus.showConfirmDialog));

  void _onPhoneNumberChanged(OnPhoneNumberChanged event, emit) =>
      emit(state.copyWith(
        status: AuthLoginStatus.stateChanged,
        phoneNumber: event.phoneNumber,
      ));

  void _onCountryChanged(OnCountryChanged event, emit) => emit(state.copyWith(
        status: AuthLoginStatus.stateChanged,
        country: event.country,
      ));
}
