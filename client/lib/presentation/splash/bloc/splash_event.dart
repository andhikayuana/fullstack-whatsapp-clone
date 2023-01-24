import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class SplashEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class CheckCurrentAccount extends SplashEvent {}

class NavigateToAuth extends SplashEvent {}

class NavigateToChats extends SplashEvent {}
