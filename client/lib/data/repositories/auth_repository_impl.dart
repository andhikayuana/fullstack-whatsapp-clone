import 'package:client/data/local/cache.dart';
import 'package:client/domain/entities/need_verify.dart';
import 'package:client/domain/repositories/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final FirebaseAuth _firebaseAuth;
  final Cache _cache;

  AuthRepositoryImpl(this._firebaseAuth, this._cache);

  @override
  User? getUser() => _firebaseAuth.currentUser;

  @override
  Future<void> logout() async {
    await Future.wait<void>([
      _firebaseAuth.signOut(),
      _cache.clear(),
    ]);
  }

  @override
  Future<void> sendSmsCode({
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
      codeSent: (String verificationId, int? forceResendingToken) async {
        await _cache.putNeedVerify(NeedVerify(
          phoneNumber: phoneNumber,
          verificationId: verificationId,
          token: forceResendingToken ?? -1,
        ));

        onCodeSent?.call(verificationId, forceResendingToken);
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  @override
  bool alreadyLogin() => _firebaseAuth.currentUser != null;

  @override
  bool needVerify() => _cache.needVerify() != null;

  @override
  NeedVerify? getNeedVerify() => _cache.needVerify();

  @override
  Future<void> verifySmsCode({required String smsCode}) async {
    final needVerify = getNeedVerify();
    final credential = PhoneAuthProvider.credential(
      verificationId: needVerify?.verificationId ?? '',
      smsCode: smsCode,
    );
    _firebaseAuth.signInWithCredential(credential);
    await _cache.putNeedVerify(null);
  }
}
