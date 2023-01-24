import 'package:country/country.dart';
import 'package:equatable/equatable.dart';

class AuthState extends Equatable {
  final AuthStatus status;
  final Country country;
  final String phoneNumber;

  const AuthState({
    this.status = AuthStatus.uninitialized,
    this.country = Countries.idn,
    this.phoneNumber = "86812345678",
  });

  AuthState copyWith({
    AuthStatus? status,
    Country? country,
    String? phoneNumber,
  }) {
    return AuthState(
      status: status ?? this.status,
      country: country ?? this.country,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }

  @override
  List<Object?> get props => [
        status,
        country,
        phoneNumber,
      ];
}

enum AuthStatus {
  uninitialized,
  loading,
  codeSent,
  verificationCompleted,
  verificationFailed,
}
