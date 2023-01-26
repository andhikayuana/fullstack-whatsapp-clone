// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_verify_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthVerifyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String smsCode) onCodeChanged,
    required TResult Function() onResendSmsClicked,
    required TResult Function(int nextCountDown) onCountDownTicked,
    required TResult Function() onNextClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String smsCode)? onCodeChanged,
    TResult? Function()? onResendSmsClicked,
    TResult? Function(int nextCountDown)? onCountDownTicked,
    TResult? Function()? onNextClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String smsCode)? onCodeChanged,
    TResult Function()? onResendSmsClicked,
    TResult Function(int nextCountDown)? onCountDownTicked,
    TResult Function()? onNextClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnCodeChanged value) onCodeChanged,
    required TResult Function(_OnResendSmsClicked value) onResendSmsClicked,
    required TResult Function(_OnCountDownTicked value) onCountDownTicked,
    required TResult Function(_OnNextClicked value) onNextClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnCodeChanged value)? onCodeChanged,
    TResult? Function(_OnResendSmsClicked value)? onResendSmsClicked,
    TResult? Function(_OnCountDownTicked value)? onCountDownTicked,
    TResult? Function(_OnNextClicked value)? onNextClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnCodeChanged value)? onCodeChanged,
    TResult Function(_OnResendSmsClicked value)? onResendSmsClicked,
    TResult Function(_OnCountDownTicked value)? onCountDownTicked,
    TResult Function(_OnNextClicked value)? onNextClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthVerifyEventCopyWith<$Res> {
  factory $AuthVerifyEventCopyWith(
          AuthVerifyEvent value, $Res Function(AuthVerifyEvent) then) =
      _$AuthVerifyEventCopyWithImpl<$Res, AuthVerifyEvent>;
}

/// @nodoc
class _$AuthVerifyEventCopyWithImpl<$Res, $Val extends AuthVerifyEvent>
    implements $AuthVerifyEventCopyWith<$Res> {
  _$AuthVerifyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_OnCodeChangedCopyWith<$Res> {
  factory _$$_OnCodeChangedCopyWith(
          _$_OnCodeChanged value, $Res Function(_$_OnCodeChanged) then) =
      __$$_OnCodeChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String smsCode});
}

/// @nodoc
class __$$_OnCodeChangedCopyWithImpl<$Res>
    extends _$AuthVerifyEventCopyWithImpl<$Res, _$_OnCodeChanged>
    implements _$$_OnCodeChangedCopyWith<$Res> {
  __$$_OnCodeChangedCopyWithImpl(
      _$_OnCodeChanged _value, $Res Function(_$_OnCodeChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smsCode = null,
  }) {
    return _then(_$_OnCodeChanged(
      smsCode: null == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnCodeChanged implements _OnCodeChanged {
  const _$_OnCodeChanged({required this.smsCode});

  @override
  final String smsCode;

  @override
  String toString() {
    return 'AuthVerifyEvent.onCodeChanged(smsCode: $smsCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnCodeChanged &&
            (identical(other.smsCode, smsCode) || other.smsCode == smsCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, smsCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnCodeChangedCopyWith<_$_OnCodeChanged> get copyWith =>
      __$$_OnCodeChangedCopyWithImpl<_$_OnCodeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String smsCode) onCodeChanged,
    required TResult Function() onResendSmsClicked,
    required TResult Function(int nextCountDown) onCountDownTicked,
    required TResult Function() onNextClicked,
  }) {
    return onCodeChanged(smsCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String smsCode)? onCodeChanged,
    TResult? Function()? onResendSmsClicked,
    TResult? Function(int nextCountDown)? onCountDownTicked,
    TResult? Function()? onNextClicked,
  }) {
    return onCodeChanged?.call(smsCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String smsCode)? onCodeChanged,
    TResult Function()? onResendSmsClicked,
    TResult Function(int nextCountDown)? onCountDownTicked,
    TResult Function()? onNextClicked,
    required TResult orElse(),
  }) {
    if (onCodeChanged != null) {
      return onCodeChanged(smsCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnCodeChanged value) onCodeChanged,
    required TResult Function(_OnResendSmsClicked value) onResendSmsClicked,
    required TResult Function(_OnCountDownTicked value) onCountDownTicked,
    required TResult Function(_OnNextClicked value) onNextClicked,
  }) {
    return onCodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnCodeChanged value)? onCodeChanged,
    TResult? Function(_OnResendSmsClicked value)? onResendSmsClicked,
    TResult? Function(_OnCountDownTicked value)? onCountDownTicked,
    TResult? Function(_OnNextClicked value)? onNextClicked,
  }) {
    return onCodeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnCodeChanged value)? onCodeChanged,
    TResult Function(_OnResendSmsClicked value)? onResendSmsClicked,
    TResult Function(_OnCountDownTicked value)? onCountDownTicked,
    TResult Function(_OnNextClicked value)? onNextClicked,
    required TResult orElse(),
  }) {
    if (onCodeChanged != null) {
      return onCodeChanged(this);
    }
    return orElse();
  }
}

abstract class _OnCodeChanged implements AuthVerifyEvent {
  const factory _OnCodeChanged({required final String smsCode}) =
      _$_OnCodeChanged;

  String get smsCode;
  @JsonKey(ignore: true)
  _$$_OnCodeChangedCopyWith<_$_OnCodeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnResendSmsClickedCopyWith<$Res> {
  factory _$$_OnResendSmsClickedCopyWith(_$_OnResendSmsClicked value,
          $Res Function(_$_OnResendSmsClicked) then) =
      __$$_OnResendSmsClickedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnResendSmsClickedCopyWithImpl<$Res>
    extends _$AuthVerifyEventCopyWithImpl<$Res, _$_OnResendSmsClicked>
    implements _$$_OnResendSmsClickedCopyWith<$Res> {
  __$$_OnResendSmsClickedCopyWithImpl(
      _$_OnResendSmsClicked _value, $Res Function(_$_OnResendSmsClicked) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnResendSmsClicked implements _OnResendSmsClicked {
  const _$_OnResendSmsClicked();

  @override
  String toString() {
    return 'AuthVerifyEvent.onResendSmsClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnResendSmsClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String smsCode) onCodeChanged,
    required TResult Function() onResendSmsClicked,
    required TResult Function(int nextCountDown) onCountDownTicked,
    required TResult Function() onNextClicked,
  }) {
    return onResendSmsClicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String smsCode)? onCodeChanged,
    TResult? Function()? onResendSmsClicked,
    TResult? Function(int nextCountDown)? onCountDownTicked,
    TResult? Function()? onNextClicked,
  }) {
    return onResendSmsClicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String smsCode)? onCodeChanged,
    TResult Function()? onResendSmsClicked,
    TResult Function(int nextCountDown)? onCountDownTicked,
    TResult Function()? onNextClicked,
    required TResult orElse(),
  }) {
    if (onResendSmsClicked != null) {
      return onResendSmsClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnCodeChanged value) onCodeChanged,
    required TResult Function(_OnResendSmsClicked value) onResendSmsClicked,
    required TResult Function(_OnCountDownTicked value) onCountDownTicked,
    required TResult Function(_OnNextClicked value) onNextClicked,
  }) {
    return onResendSmsClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnCodeChanged value)? onCodeChanged,
    TResult? Function(_OnResendSmsClicked value)? onResendSmsClicked,
    TResult? Function(_OnCountDownTicked value)? onCountDownTicked,
    TResult? Function(_OnNextClicked value)? onNextClicked,
  }) {
    return onResendSmsClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnCodeChanged value)? onCodeChanged,
    TResult Function(_OnResendSmsClicked value)? onResendSmsClicked,
    TResult Function(_OnCountDownTicked value)? onCountDownTicked,
    TResult Function(_OnNextClicked value)? onNextClicked,
    required TResult orElse(),
  }) {
    if (onResendSmsClicked != null) {
      return onResendSmsClicked(this);
    }
    return orElse();
  }
}

abstract class _OnResendSmsClicked implements AuthVerifyEvent {
  const factory _OnResendSmsClicked() = _$_OnResendSmsClicked;
}

/// @nodoc
abstract class _$$_OnCountDownTickedCopyWith<$Res> {
  factory _$$_OnCountDownTickedCopyWith(_$_OnCountDownTicked value,
          $Res Function(_$_OnCountDownTicked) then) =
      __$$_OnCountDownTickedCopyWithImpl<$Res>;
  @useResult
  $Res call({int nextCountDown});
}

/// @nodoc
class __$$_OnCountDownTickedCopyWithImpl<$Res>
    extends _$AuthVerifyEventCopyWithImpl<$Res, _$_OnCountDownTicked>
    implements _$$_OnCountDownTickedCopyWith<$Res> {
  __$$_OnCountDownTickedCopyWithImpl(
      _$_OnCountDownTicked _value, $Res Function(_$_OnCountDownTicked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextCountDown = null,
  }) {
    return _then(_$_OnCountDownTicked(
      nextCountDown: null == nextCountDown
          ? _value.nextCountDown
          : nextCountDown // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_OnCountDownTicked implements _OnCountDownTicked {
  const _$_OnCountDownTicked({required this.nextCountDown});

  @override
  final int nextCountDown;

  @override
  String toString() {
    return 'AuthVerifyEvent.onCountDownTicked(nextCountDown: $nextCountDown)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnCountDownTicked &&
            (identical(other.nextCountDown, nextCountDown) ||
                other.nextCountDown == nextCountDown));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nextCountDown);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnCountDownTickedCopyWith<_$_OnCountDownTicked> get copyWith =>
      __$$_OnCountDownTickedCopyWithImpl<_$_OnCountDownTicked>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String smsCode) onCodeChanged,
    required TResult Function() onResendSmsClicked,
    required TResult Function(int nextCountDown) onCountDownTicked,
    required TResult Function() onNextClicked,
  }) {
    return onCountDownTicked(nextCountDown);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String smsCode)? onCodeChanged,
    TResult? Function()? onResendSmsClicked,
    TResult? Function(int nextCountDown)? onCountDownTicked,
    TResult? Function()? onNextClicked,
  }) {
    return onCountDownTicked?.call(nextCountDown);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String smsCode)? onCodeChanged,
    TResult Function()? onResendSmsClicked,
    TResult Function(int nextCountDown)? onCountDownTicked,
    TResult Function()? onNextClicked,
    required TResult orElse(),
  }) {
    if (onCountDownTicked != null) {
      return onCountDownTicked(nextCountDown);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnCodeChanged value) onCodeChanged,
    required TResult Function(_OnResendSmsClicked value) onResendSmsClicked,
    required TResult Function(_OnCountDownTicked value) onCountDownTicked,
    required TResult Function(_OnNextClicked value) onNextClicked,
  }) {
    return onCountDownTicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnCodeChanged value)? onCodeChanged,
    TResult? Function(_OnResendSmsClicked value)? onResendSmsClicked,
    TResult? Function(_OnCountDownTicked value)? onCountDownTicked,
    TResult? Function(_OnNextClicked value)? onNextClicked,
  }) {
    return onCountDownTicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnCodeChanged value)? onCodeChanged,
    TResult Function(_OnResendSmsClicked value)? onResendSmsClicked,
    TResult Function(_OnCountDownTicked value)? onCountDownTicked,
    TResult Function(_OnNextClicked value)? onNextClicked,
    required TResult orElse(),
  }) {
    if (onCountDownTicked != null) {
      return onCountDownTicked(this);
    }
    return orElse();
  }
}

abstract class _OnCountDownTicked implements AuthVerifyEvent {
  const factory _OnCountDownTicked({required final int nextCountDown}) =
      _$_OnCountDownTicked;

  int get nextCountDown;
  @JsonKey(ignore: true)
  _$$_OnCountDownTickedCopyWith<_$_OnCountDownTicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnNextClickedCopyWith<$Res> {
  factory _$$_OnNextClickedCopyWith(
          _$_OnNextClicked value, $Res Function(_$_OnNextClicked) then) =
      __$$_OnNextClickedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnNextClickedCopyWithImpl<$Res>
    extends _$AuthVerifyEventCopyWithImpl<$Res, _$_OnNextClicked>
    implements _$$_OnNextClickedCopyWith<$Res> {
  __$$_OnNextClickedCopyWithImpl(
      _$_OnNextClicked _value, $Res Function(_$_OnNextClicked) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnNextClicked implements _OnNextClicked {
  const _$_OnNextClicked();

  @override
  String toString() {
    return 'AuthVerifyEvent.onNextClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnNextClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String smsCode) onCodeChanged,
    required TResult Function() onResendSmsClicked,
    required TResult Function(int nextCountDown) onCountDownTicked,
    required TResult Function() onNextClicked,
  }) {
    return onNextClicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String smsCode)? onCodeChanged,
    TResult? Function()? onResendSmsClicked,
    TResult? Function(int nextCountDown)? onCountDownTicked,
    TResult? Function()? onNextClicked,
  }) {
    return onNextClicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String smsCode)? onCodeChanged,
    TResult Function()? onResendSmsClicked,
    TResult Function(int nextCountDown)? onCountDownTicked,
    TResult Function()? onNextClicked,
    required TResult orElse(),
  }) {
    if (onNextClicked != null) {
      return onNextClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnCodeChanged value) onCodeChanged,
    required TResult Function(_OnResendSmsClicked value) onResendSmsClicked,
    required TResult Function(_OnCountDownTicked value) onCountDownTicked,
    required TResult Function(_OnNextClicked value) onNextClicked,
  }) {
    return onNextClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnCodeChanged value)? onCodeChanged,
    TResult? Function(_OnResendSmsClicked value)? onResendSmsClicked,
    TResult? Function(_OnCountDownTicked value)? onCountDownTicked,
    TResult? Function(_OnNextClicked value)? onNextClicked,
  }) {
    return onNextClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnCodeChanged value)? onCodeChanged,
    TResult Function(_OnResendSmsClicked value)? onResendSmsClicked,
    TResult Function(_OnCountDownTicked value)? onCountDownTicked,
    TResult Function(_OnNextClicked value)? onNextClicked,
    required TResult orElse(),
  }) {
    if (onNextClicked != null) {
      return onNextClicked(this);
    }
    return orElse();
  }
}

abstract class _OnNextClicked implements AuthVerifyEvent {
  const factory _OnNextClicked() = _$_OnNextClicked;
}
