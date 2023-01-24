import 'package:equatable/equatable.dart';
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
