import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class SplashState extends Equatable {
  @override
  List<Object?> get props => [];
}

class Initial extends SplashState {}

class Loading extends SplashState {}

class Loaded extends SplashState {
  final bool alreadyLogin;

  Loaded(this.alreadyLogin);
}
