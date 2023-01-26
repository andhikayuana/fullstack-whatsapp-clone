import 'package:client/domain/entities/need_verify.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Future<void> sendSmsCode({
    required String phoneNumber,
    PhoneVerificationCompleted? onVerificationCompleted,
    PhoneVerificationFailed? onVerificationFailed,
    PhoneCodeSent? onCodeSent,
  });

  Future<void> verifySmsCode({
    required String smsCode,
  });

  User? getUser();

  bool alreadyLogin();

  bool needVerify();

  NeedVerify? getNeedVerify();

  Future<void> logout();
}
