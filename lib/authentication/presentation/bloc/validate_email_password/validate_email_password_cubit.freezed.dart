// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'validate_email_password_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValidateEmailPasswordState {
  String? get emailErrorText => throw _privateConstructorUsedError;
  String? get passwordErrorText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValidateEmailPasswordStateCopyWith<ValidateEmailPasswordState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateEmailPasswordStateCopyWith<$Res> {
  factory $ValidateEmailPasswordStateCopyWith(ValidateEmailPasswordState value,
          $Res Function(ValidateEmailPasswordState) then) =
      _$ValidateEmailPasswordStateCopyWithImpl<$Res,
          ValidateEmailPasswordState>;
  @useResult
  $Res call({String? emailErrorText, String? passwordErrorText});
}

/// @nodoc
class _$ValidateEmailPasswordStateCopyWithImpl<$Res,
        $Val extends ValidateEmailPasswordState>
    implements $ValidateEmailPasswordStateCopyWith<$Res> {
  _$ValidateEmailPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailErrorText = freezed,
    Object? passwordErrorText = freezed,
  }) {
    return _then(_value.copyWith(
      emailErrorText: freezed == emailErrorText
          ? _value.emailErrorText
          : emailErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordErrorText: freezed == passwordErrorText
          ? _value.passwordErrorText
          : passwordErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ValidateEmailPasswordStateCopyWith<$Res>
    implements $ValidateEmailPasswordStateCopyWith<$Res> {
  factory _$$_ValidateEmailPasswordStateCopyWith(
          _$_ValidateEmailPasswordState value,
          $Res Function(_$_ValidateEmailPasswordState) then) =
      __$$_ValidateEmailPasswordStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? emailErrorText, String? passwordErrorText});
}

/// @nodoc
class __$$_ValidateEmailPasswordStateCopyWithImpl<$Res>
    extends _$ValidateEmailPasswordStateCopyWithImpl<$Res,
        _$_ValidateEmailPasswordState>
    implements _$$_ValidateEmailPasswordStateCopyWith<$Res> {
  __$$_ValidateEmailPasswordStateCopyWithImpl(
      _$_ValidateEmailPasswordState _value,
      $Res Function(_$_ValidateEmailPasswordState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailErrorText = freezed,
    Object? passwordErrorText = freezed,
  }) {
    return _then(_$_ValidateEmailPasswordState(
      emailErrorText: freezed == emailErrorText
          ? _value.emailErrorText
          : emailErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordErrorText: freezed == passwordErrorText
          ? _value.passwordErrorText
          : passwordErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ValidateEmailPasswordState implements _ValidateEmailPasswordState {
  const _$_ValidateEmailPasswordState(
      {required this.emailErrorText, required this.passwordErrorText});

  @override
  final String? emailErrorText;
  @override
  final String? passwordErrorText;

  @override
  String toString() {
    return 'ValidateEmailPasswordState(emailErrorText: $emailErrorText, passwordErrorText: $passwordErrorText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidateEmailPasswordState &&
            (identical(other.emailErrorText, emailErrorText) ||
                other.emailErrorText == emailErrorText) &&
            (identical(other.passwordErrorText, passwordErrorText) ||
                other.passwordErrorText == passwordErrorText));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, emailErrorText, passwordErrorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValidateEmailPasswordStateCopyWith<_$_ValidateEmailPasswordState>
      get copyWith => __$$_ValidateEmailPasswordStateCopyWithImpl<
          _$_ValidateEmailPasswordState>(this, _$identity);
}

abstract class _ValidateEmailPasswordState
    implements ValidateEmailPasswordState {
  const factory _ValidateEmailPasswordState(
          {required final String? emailErrorText,
          required final String? passwordErrorText}) =
      _$_ValidateEmailPasswordState;

  @override
  String? get emailErrorText;
  @override
  String? get passwordErrorText;
  @override
  @JsonKey(ignore: true)
  _$$_ValidateEmailPasswordStateCopyWith<_$_ValidateEmailPasswordState>
      get copyWith => throw _privateConstructorUsedError;
}
