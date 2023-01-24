import 'dart:async';
import 'package:client/domain/repositories/auth_repository.dart';
import 'package:client/presentation/auth/bloc/auth_event.dart';
import 'package:client/presentation/auth/bloc/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

//https://dhruvnakum.xyz/flutterfire-x-bloc-phone-authentication
@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;

  AuthBloc(this._authRepository) : super(const AuthState()) {
    on<CountryChanged>(_onCountryChanged);
    on<PhoneNumberChanged>(_onPhoneNumberChanged);
    on<NextClicked>(_onNextClicked);
    on<CodeSent>(
        (event, emit) => emit(state.copyWith(status: AuthStatus.codeSent)));
    on<VerificationCompleted>((event, emit) async {
      await _authRepository.signInWithCredential(event.credential).whenComplete(
            () =>
                emit(state.copyWith(status: AuthStatus.verificationCompleted)),
          );
    });
  }

  void _onCountryChanged(CountryChanged event, Emitter<AuthState> emit) {
    emit(state.copyWith(country: event.country));
  }

  void _onPhoneNumberChanged(
      PhoneNumberChanged event, Emitter<AuthState> emit) {
    emit(state.copyWith(phoneNumber: event.phoneNumber));
  }

  Future<void> _onNextClicked(
      NextClicked event, Emitter<AuthState> emit) async {
    try {
      emit(state.copyWith(status: AuthStatus.loading));

      await _authRepository.verifyCode(
        phoneNumber: "+${state.country.countryCode}${state.phoneNumber}",
        onCodeSent: (verificationId, forceResendingToken) {
          add(CodeSent(
              verificationId: verificationId, token: forceResendingToken));

          final PhoneAuthCredential credential = PhoneAuthProvider.credential(
            verificationId: verificationId,
            smsCode: '123456',
          );

          add(VerificationCompleted(credential: credential));
        },
        onVerificationCompleted: (phoneAuthCredential) {
          add(VerificationCompleted(credential: phoneAuthCredential));
        },
        onVerificationFailed: (error) {},
      );
    } catch (e) {
      print(e);
    }
  }
}
