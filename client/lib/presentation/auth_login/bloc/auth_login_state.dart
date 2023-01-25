// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:country/country.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class AuthLoginState extends Equatable {
  final AuthLoginStatus status;
  final String phoneNumber;
  final Country country;

  const AuthLoginState({
    this.status = AuthLoginStatus.uninitialized,
    this.phoneNumber = "",
    this.country = Countries.idn,
  });

  @override
  List<Object?> get props => [status, phoneNumber, country];

  AuthLoginState copyWith({
    AuthLoginStatus? status,
    String? phoneNumber,
    Country? country,
  }) {
    return AuthLoginState(
      status: status ?? this.status,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      country: country ?? this.country,
    );
  }
}

enum AuthLoginStatus {
  uninitialized,
  stateChanged,
  smsCodeSent,
  verificationFailed,
}
