// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:country/country.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class AuthState extends Equatable {}

class AuthStateChanged extends AuthState {
  final Country selectedCountry;
  final String phoneNumber;

  AuthStateChanged({
    this.selectedCountry = Countries.idn,
    this.phoneNumber = "",
  });

  @override
  List<Object?> get props => [selectedCountry, phoneNumber];

  AuthStateChanged copyWith({
    Country? selectedCountry,
    String? phoneNumber,
  }) {
    return AuthStateChanged(
      selectedCountry: selectedCountry ?? this.selectedCountry,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }
}

class AuthStateVerifyChanged extends AuthState {
  final String verificationId;
  final int token;
  final String smsCode;

  AuthStateVerifyChanged({
    required this.verificationId,
    required this.token,
    required this.smsCode,
  });

  @override
  List<Object?> get props => [verificationId, token, smsCode];

  AuthStateVerifyChanged copyWith({
    String? verificationId,
    int? token,
    String? smsCode,
  }) {
    return AuthStateVerifyChanged(
      verificationId: verificationId ?? this.verificationId,
      token: token ?? this.token,
      smsCode: smsCode ?? this.smsCode,
    );
  }
}
