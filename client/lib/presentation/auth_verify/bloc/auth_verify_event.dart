import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_verify_event.freezed.dart';

@freezed
class AuthVerifyEvent with _$AuthVerifyEvent {
  const factory AuthVerifyEvent.onCodeChanged({
    required String smsCode,
  }) = _OnCodeChanged;
  const factory AuthVerifyEvent.onResendSmsClicked() = _OnResendSmsClicked;
  const factory AuthVerifyEvent.onCountDownTicked({
    required int nextCountDown,
  }) = _OnCountDownTicked;
  const factory AuthVerifyEvent.onNextClicked() = _OnNextClicked;
}
