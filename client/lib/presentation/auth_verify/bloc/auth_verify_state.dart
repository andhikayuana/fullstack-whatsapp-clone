import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_verify_state.freezed.dart';

@freezed
class AuthVerifyState with _$AuthVerifyState {
  const factory AuthVerifyState(
      {required String phoneNumber,
      required String smsCode,
      required int countDown,
      required bool loading,
      required bool verificationCompleted}) = _AuthVerifyState;

  factory AuthVerifyState.initial({required String phoneNumber}) =>
      AuthVerifyState(
          phoneNumber: phoneNumber,
          smsCode: '',
          countDown: 60,
          loading: false,
          verificationCompleted: false);
}
