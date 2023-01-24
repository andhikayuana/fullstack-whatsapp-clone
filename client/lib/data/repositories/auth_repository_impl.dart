import 'package:client/domain/repositories/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final FirebaseAuth _firebaseAuth;

  AuthRepositoryImpl(this._firebaseAuth);

  @override
  User? getUser() => _firebaseAuth.currentUser;

  @override
  Future<void> logout() async {
    _firebaseAuth.signOut();
  }

  @override
  Future<void> verifyCode({
    required String phoneNumber,
    PhoneVerificationCompleted? onVerificationCompleted,
    PhoneVerificationFailed? onVerificationFailed,
    PhoneCodeSent? onCodeSent,
  }) async {
    _firebaseAuth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      timeout: const Duration(seconds: 60),
      verificationCompleted: (AuthCredential credential) {
        _firebaseAuth.signInWithCredential(credential);
        onVerificationCompleted?.call(credential as PhoneAuthCredential);
      },
      verificationFailed: (FirebaseAuthException exception) {
        onVerificationFailed?.call(exception);
      },
      codeSent: (String verificationId, int? forceResendingToken) {
        onCodeSent?.call(verificationId, forceResendingToken);
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  @override
  bool alreadyLogin() => _firebaseAuth.currentUser != null;

  @override
  Future<void> signInWithCredential(AuthCredential credential) async {
    await _firebaseAuth.signInWithCredential(credential);
  }
}
