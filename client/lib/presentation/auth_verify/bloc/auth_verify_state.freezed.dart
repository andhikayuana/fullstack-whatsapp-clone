// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_verify_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthVerifyState {
  String get phoneNumber => throw _privateConstructorUsedError;
  String get smsCode => throw _privateConstructorUsedError;
  int get countDown => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get verificationCompleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthVerifyStateCopyWith<AuthVerifyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthVerifyStateCopyWith<$Res> {
  factory $AuthVerifyStateCopyWith(
          AuthVerifyState value, $Res Function(AuthVerifyState) then) =
      _$AuthVerifyStateCopyWithImpl<$Res, AuthVerifyState>;
  @useResult
  $Res call(
      {String phoneNumber,
      String smsCode,
      int countDown,
      bool loading,
      bool verificationCompleted});
}

/// @nodoc
class _$AuthVerifyStateCopyWithImpl<$Res, $Val extends AuthVerifyState>
    implements $AuthVerifyStateCopyWith<$Res> {
  _$AuthVerifyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? smsCode = null,
    Object? countDown = null,
    Object? loading = null,
    Object? verificationCompleted = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      smsCode: null == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      countDown: null == countDown
          ? _value.countDown
          : countDown // ignore: cast_nullable_to_non_nullable
              as int,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      verificationCompleted: null == verificationCompleted
          ? _value.verificationCompleted
          : verificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthVerifyStateCopyWith<$Res>
    implements $AuthVerifyStateCopyWith<$Res> {
  factory _$$_AuthVerifyStateCopyWith(
          _$_AuthVerifyState value, $Res Function(_$_AuthVerifyState) then) =
      __$$_AuthVerifyStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String phoneNumber,
      String smsCode,
      int countDown,
      bool loading,
      bool verificationCompleted});
}

/// @nodoc
class __$$_AuthVerifyStateCopyWithImpl<$Res>
    extends _$AuthVerifyStateCopyWithImpl<$Res, _$_AuthVerifyState>
    implements _$$_AuthVerifyStateCopyWith<$Res> {
  __$$_AuthVerifyStateCopyWithImpl(
      _$_AuthVerifyState _value, $Res Function(_$_AuthVerifyState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? smsCode = null,
    Object? countDown = null,
    Object? loading = null,
    Object? verificationCompleted = null,
  }) {
    return _then(_$_AuthVerifyState(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      smsCode: null == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      countDown: null == countDown
          ? _value.countDown
          : countDown // ignore: cast_nullable_to_non_nullable
              as int,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      verificationCompleted: null == verificationCompleted
          ? _value.verificationCompleted
          : verificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AuthVerifyState implements _AuthVerifyState {
  const _$_AuthVerifyState(
      {required this.phoneNumber,
      required this.smsCode,
      required this.countDown,
      required this.loading,
      required this.verificationCompleted});

  @override
  final String phoneNumber;
  @override
  final String smsCode;
  @override
  final int countDown;
  @override
  final bool loading;
  @override
  final bool verificationCompleted;

  @override
  String toString() {
    return 'AuthVerifyState(phoneNumber: $phoneNumber, smsCode: $smsCode, countDown: $countDown, loading: $loading, verificationCompleted: $verificationCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthVerifyState &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.smsCode, smsCode) || other.smsCode == smsCode) &&
            (identical(other.countDown, countDown) ||
                other.countDown == countDown) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.verificationCompleted, verificationCompleted) ||
                other.verificationCompleted == verificationCompleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, smsCode, countDown,
      loading, verificationCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthVerifyStateCopyWith<_$_AuthVerifyState> get copyWith =>
      __$$_AuthVerifyStateCopyWithImpl<_$_AuthVerifyState>(this, _$identity);
}

abstract class _AuthVerifyState implements AuthVerifyState {
  const factory _AuthVerifyState(
      {required final String phoneNumber,
      required final String smsCode,
      required final int countDown,
      required final bool loading,
      required final bool verificationCompleted}) = _$_AuthVerifyState;

  @override
  String get phoneNumber;
  @override
  String get smsCode;
  @override
  int get countDown;
  @override
  bool get loading;
  @override
  bool get verificationCompleted;
  @override
  @JsonKey(ignore: true)
  _$$_AuthVerifyStateCopyWith<_$_AuthVerifyState> get copyWith =>
      throw _privateConstructorUsedError;
}
