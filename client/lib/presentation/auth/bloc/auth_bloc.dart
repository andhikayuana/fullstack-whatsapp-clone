import 'dart:async';
import 'package:client/domain/repositories/auth_repository.dart';
import 'package:client/presentation/auth/bloc/auth_event.dart';
import 'package:client/presentation/auth/bloc/auth_state.dart';
import 'package:country/country.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

//https://dhruvnakum.xyz/flutterfire-x-bloc-phone-authentication
// @injectable
// class AuthBloc extends Bloc<AuthEvent, AuthState> {
//   final AuthRepository _authRepository;

//   AuthBloc(this._authRepository) : super(const AuthState()) {

//     });
// }

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;

  AuthBloc(this._authRepository) : super(AuthStateChanged()) {
    debugPrint("AuthBloc Consttructor");
    //todo
    on<OnCountrySelected>(_onCountrySelected);
    on<OnPhoneNumberChanged>(_onPhoneNumberChanged);
    on<OnNextClicked>(_onNextClicked);
    on<OnSmsCodeSent>(_onSmsCodeSent);
  }

  void _onSmsCodeSent(OnSmsCodeSent event, emit) {
    emit(AuthStateVerifyChanged(
        verificationId: event.verificationId, token: event.token, smsCode: ""));
  }

  Future<void> _onNextClicked(OnNextClicked event, emit) async {
    if (!event.isVerify) {
      final currentState = state as AuthStateChanged;
      final phoneNumber =
          "+${currentState.selectedCountry.countryCode}${currentState.phoneNumber}";
      await _authRepository.verifyCode(
        phoneNumber: phoneNumber,
        onCodeSent: (verificationId, forceResendingToken) =>
            add(OnSmsCodeSent(verificationId, forceResendingToken!)),
        onVerificationCompleted: (phoneAuthCredential) {
          debugPrint('onVerificationCompleted');
        },
        onVerificationFailed: (error) {
          debugPrint('onVerificationFailed');
          debugPrint(error.toString());
        },
      );
    }
  }

  void _onPhoneNumberChanged(OnPhoneNumberChanged event, emit) {
    final currentState = state as AuthStateChanged;
    final phoneNumber = event.phoneNumber;
    emit(currentState.copyWith(phoneNumber: phoneNumber));
  }

  void _onCountrySelected(OnCountrySelected event, emit) {
    final currentState = state as AuthStateChanged;
    emit(currentState.copyWith(selectedCountry: event.selectedCountry));
  }
}
