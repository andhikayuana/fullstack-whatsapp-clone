// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:country/country.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

@immutable
abstract class AuthLoginEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class OnCountryChanged extends AuthLoginEvent {
  final Country country;

  OnCountryChanged(this.country);

  @override
  List<Object?> get props => [country];
}

class OnPhoneNumberChanged extends AuthLoginEvent {
  final String phoneNumber;

  OnPhoneNumberChanged(this.phoneNumber);

  @override
  List<Object?> get props => [phoneNumber];
}

class OnNextClicked extends AuthLoginEvent {}

class OnEditClicked extends AuthLoginEvent {}

class OnOkClicked extends AuthLoginEvent {}

class OnSmsCodeSent extends AuthLoginEvent {
  final String verificationId;
  final int token;

  OnSmsCodeSent(this.verificationId, this.token);

  @override
  List<Object?> get props => [verificationId, token];
}

class OnVerificationFailed extends AuthLoginEvent {
  final FirebaseAuthException error;

  OnVerificationFailed(this.error);

  @override
  List<Object?> get props => [error];
}
