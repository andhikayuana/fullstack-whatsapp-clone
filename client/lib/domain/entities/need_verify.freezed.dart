// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'need_verify.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NeedVerify _$NeedVerifyFromJson(Map<String, dynamic> json) {
  return _NeedVerify.fromJson(json);
}

/// @nodoc
mixin _$NeedVerify {
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'verification_id')
  String get verificationId => throw _privateConstructorUsedError;
  int get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NeedVerifyCopyWith<NeedVerify> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NeedVerifyCopyWith<$Res> {
  factory $NeedVerifyCopyWith(
          NeedVerify value, $Res Function(NeedVerify) then) =
      _$NeedVerifyCopyWithImpl<$Res, NeedVerify>;
  @useResult
  $Res call(
      {String phoneNumber,
      @JsonKey(name: 'verification_id') String verificationId,
      int token});
}

/// @nodoc
class _$NeedVerifyCopyWithImpl<$Res, $Val extends NeedVerify>
    implements $NeedVerifyCopyWith<$Res> {
  _$NeedVerifyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? verificationId = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NeedVerifyCopyWith<$Res>
    implements $NeedVerifyCopyWith<$Res> {
  factory _$$_NeedVerifyCopyWith(
          _$_NeedVerify value, $Res Function(_$_NeedVerify) then) =
      __$$_NeedVerifyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String phoneNumber,
      @JsonKey(name: 'verification_id') String verificationId,
      int token});
}

/// @nodoc
class __$$_NeedVerifyCopyWithImpl<$Res>
    extends _$NeedVerifyCopyWithImpl<$Res, _$_NeedVerify>
    implements _$$_NeedVerifyCopyWith<$Res> {
  __$$_NeedVerifyCopyWithImpl(
      _$_NeedVerify _value, $Res Function(_$_NeedVerify) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? verificationId = null,
    Object? token = null,
  }) {
    return _then(_$_NeedVerify(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NeedVerify implements _NeedVerify {
  const _$_NeedVerify(
      {required this.phoneNumber,
      @JsonKey(name: 'verification_id') required this.verificationId,
      required this.token});

  factory _$_NeedVerify.fromJson(Map<String, dynamic> json) =>
      _$$_NeedVerifyFromJson(json);

  @override
  final String phoneNumber;
  @override
  @JsonKey(name: 'verification_id')
  final String verificationId;
  @override
  final int token;

  @override
  String toString() {
    return 'NeedVerify(phoneNumber: $phoneNumber, verificationId: $verificationId, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NeedVerify &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, phoneNumber, verificationId, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NeedVerifyCopyWith<_$_NeedVerify> get copyWith =>
      __$$_NeedVerifyCopyWithImpl<_$_NeedVerify>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NeedVerifyToJson(
      this,
    );
  }
}

abstract class _NeedVerify implements NeedVerify {
  const factory _NeedVerify(
      {required final String phoneNumber,
      @JsonKey(name: 'verification_id') required final String verificationId,
      required final int token}) = _$_NeedVerify;

  factory _NeedVerify.fromJson(Map<String, dynamic> json) =
      _$_NeedVerify.fromJson;

  @override
  String get phoneNumber;
  @override
  @JsonKey(name: 'verification_id')
  String get verificationId;
  @override
  int get token;
  @override
  @JsonKey(ignore: true)
  _$$_NeedVerifyCopyWith<_$_NeedVerify> get copyWith =>
      throw _privateConstructorUsedError;
}
