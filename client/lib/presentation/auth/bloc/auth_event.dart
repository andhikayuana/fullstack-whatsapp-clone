import 'package:country/country.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class AuthEvent extends Equatable {}

class OnCountrySelected extends AuthEvent {
  final Country selectedCountry;

  OnCountrySelected(this.selectedCountry);

  @override
  List<Object?> get props => [selectedCountry];
}

class OnPhoneNumberChanged extends AuthEvent {
  final String phoneNumber;

  OnPhoneNumberChanged(this.phoneNumber);

  @override
  List<Object?> get props => [phoneNumber];
}

class OnNextClicked extends AuthEvent {
  //verification or not
  final bool isVerify;

  OnNextClicked(this.isVerify);

  @override
  List<Object?> get props => [isVerify];
}

class OnSmsCodeSent extends AuthEvent {
  final String verificationId;
  final int token;

  OnSmsCodeSent(this.verificationId, this.token);

  @override
  List<Object?> get props => [verificationId, token];
}
