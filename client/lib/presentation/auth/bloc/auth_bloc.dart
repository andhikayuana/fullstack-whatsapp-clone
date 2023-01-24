import 'dart:async';

import 'package:client/domain/repositories/auth_repository.dart';
import 'package:client/presentation/auth/bloc/auth_event.dart';
import 'package:client/presentation/auth/bloc/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;

  AuthBloc(this._authRepository) : super(const AuthState()) {
    on<CountryChanged>(_onCountryChanged);
    on<PhoneNumberChanged>(_onPhoneNumberChanged);
    on<NextClicked>(_onNextClicked);
  }

  void _onCountryChanged(CountryChanged event, Emitter<AuthState> emit) {
    emit(state.copyWith(
      countryName: event.countryName,
      countryCode: event.countryCode,
    ));
  }

  void _onPhoneNumberChanged(
      PhoneNumberChanged event, Emitter<AuthState> emit) {
    emit(state.copyWith(phoneNumber: event.phoneNumber));
  }

  Future<void> _onNextClicked(
      NextClicked event, Emitter<AuthState> emit) async {
    try {
      emit(state.copyWith(status: AuthStatus.loading));

      _authRepository.verifyCode(
        phoneNumber: "${state.countryCode}${state.phoneNumber}",
        onCodeSent: (verificationId, forceResendingToken) {
          emit(state.copyWith(status: AuthStatus.codeSent));
        },
        onVerificationCompleted: (phoneAuthCredential) {
          emit(state.copyWith(status: AuthStatus.verificationCompleted));
        },
        onVerificationFailed: (error) {
          emit(state.copyWith(status: AuthStatus.verificationFailed));
        },
      );
    } catch (e) {
      print(e);
    }
  }
}
