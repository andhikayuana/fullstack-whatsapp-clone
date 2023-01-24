import 'package:equatable/equatable.dart';

class AuthState extends Equatable {
  final AuthStatus status;
  final String countryName;
  final String countryCode;
  final String phoneNumber;

  const AuthState({
    this.status = AuthStatus.uninitialized,
    this.countryName = "Indonesia",
    this.countryCode = "+62",
    this.phoneNumber = "86812345678",
  });

  AuthState copyWith({
    AuthStatus? status,
    String? countryName,
    String? countryCode,
    String? phoneNumber,
  }) {
    return AuthState(
      status: status ?? this.status,
      countryName: countryName ?? this.countryName,
      countryCode: countryCode ?? this.countryCode,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }

  @override
  List<Object?> get props => [
        status,
        countryName,
        countryCode,
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
