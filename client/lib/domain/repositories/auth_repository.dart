import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Future<void> verifyCode(
      {required String phoneNumber,
      PhoneVerificationCompleted? onVerificationCompleted,
      PhoneVerificationFailed? onVerificationFailed,
      PhoneCodeSent? onCodeSent});

  Future<void> signInWithCredential(AuthCredential credential);

  User? getUser();

  bool alreadyLogin();

  Future<void> logout();
}
