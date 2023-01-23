import 'package:client/presentation/auth/bloc/auth_event.dart';
import 'package:client/presentation/auth/bloc/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/repositories/auth_repository.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {

  final AuthRepository _authRepository;

  AuthBloc(this._authRepository) : super(AuthUninitialized()) {
    on<AppStarted>((event, emit) {
      Future.delayed(const Duration(seconds: 2));
      _authRepository.verifyCode(phoneNumber: "+6286812345678");

    });
  }
}

/**
 * D/FRCPlugin(15690): Sending fetchTimeout: 60
    W/.example.clien(15690): Verification of void com.google.android.gms.common.api.internal.zabq.zav() took 108.564ms (764.53 bytecodes/s) (3608B approximate peak alloc)
    E/zzf     (15690): Problem retrieving SafetyNet Token: 7:
    D/EGL_emulation(15690): app_time_stats: avg=21454.89ms min=1668.13ms max=41241.66ms count=2
    W/.example.clien(15690): Verification of java.lang.Object com.google.android.gms.internal.firebase-auth-api.zzxe.doInBackground(java.lang.Object[]) took 121.784ms (2619.39 bytecodes/s) (9128B approximate peak alloc)
    I/zzpz    (15690): Provider GmsCore_OpenSSL not available
    W/System  (15690): Ignoring header X-Firebase-Locale because its value was null.
    E/FirebaseAuth(15690): [GetAuthDomainTask] IOException occurred: Unable to resolve host "www.googleapis.com": No address associated with hostname
    E/zzf     (15690): Failed to get reCAPTCHA token with error [An internal error has occurred.]- calling backend without app verification
    D/EGL_emulation(15690): app_time_stats: avg=11225.66ms min=11225.66ms max=11225.66ms count=1
    W/System  (15690): Ignoring header X-Firebase-Locale because its value was null.
    E/FirebaseAuth(15690): [SmsRetrieverHelper] SMS verification code request failed: unknown status code: 17020 null
 */
