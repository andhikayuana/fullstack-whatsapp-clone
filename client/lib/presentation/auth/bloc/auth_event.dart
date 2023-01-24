import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

@immutable
abstract class AuthEvent extends Equatable {}

class CountryChanged extends AuthEvent {
  final String countryName;
  final String countryCode;

  CountryChanged({
    required this.countryName,
    required this.countryCode,
  });

  @override
  List<Object?> get props => [countryName, countryCode];
}

class PhoneNumberChanged extends AuthEvent {
  final String phoneNumber;

  PhoneNumberChanged({
    required this.phoneNumber,
  });

  @override
  List<Object?> get props => [phoneNumber];
}

class NextClicked extends AuthEvent {
  @override
  List<Object?> get props => [];
}

class VerificationCompleted extends AuthEvent {
  final AuthCredential credential;

  VerificationCompleted({required this.credential});

  @override
  List<Object?> get props => [credential];
}

class CodeSent extends AuthEvent {
  final String verificationId;
  final int? token;

  CodeSent({
    required this.verificationId,
    required this.token,
  });

  @override
  List<Object?> get props => [verificationId, token];
}
