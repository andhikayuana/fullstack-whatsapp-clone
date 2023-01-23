import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {

  Future<void> verifyCode({
    required String phoneNumber,
    PhoneVerificationCompleted? onVerificationCompleted,
    PhoneVerificationFailed? onVerificationFailed,
    PhoneCodeSent? onCodeSent
  });

  User? getUser();

  Future<void> logout();
}