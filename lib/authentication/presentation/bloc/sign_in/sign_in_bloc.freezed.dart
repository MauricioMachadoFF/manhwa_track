// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signedIn,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signedIn,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signedIn,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignedIn value)? signedIn,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SignInState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signedIn,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signedIn,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signedIn,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignedIn value)? signedIn,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SignInState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_SignedInCopyWith<$Res> {
  factory _$$_SignedInCopyWith(
          _$_SignedIn value, $Res Function(_$_SignedIn) then) =
      __$$_SignedInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignedInCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$_SignedIn>
    implements _$$_SignedInCopyWith<$Res> {
  __$$_SignedInCopyWithImpl(
      _$_SignedIn _value, $Res Function(_$_SignedIn) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignedIn implements _SignedIn {
  const _$_SignedIn();

  @override
  String toString() {
    return 'SignInState.signedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signedIn,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) {
    return signedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signedIn,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) {
    return signedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signedIn,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return signedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignedIn value)? signedIn,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return signedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(this);
    }
    return orElse();
  }
}

abstract class _SignedIn implements SignInState {
  const factory _SignedIn() = _$_SignedIn;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'SignInState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signedIn,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signedIn,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signedIn,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignedIn value)? signedIn,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SignInState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$_Error(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'SignInState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signedIn,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signedIn,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signedIn,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignedIn value)? signedIn,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SignInState {
  const factory _Error({required final String errorMessage}) = _$_Error;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddressVO emailAddress, PasswordVO password)
        registerWithEmailAndPassword,
    required TResult Function(EmailAddressVO emailAddress, PasswordVO password)
        signInWithEmailAndPassword,
    required TResult Function() signInWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmailAddressVO emailAddress, PasswordVO password)?
        registerWithEmailAndPassword,
    TResult? Function(EmailAddressVO emailAddress, PasswordVO password)?
        signInWithEmailAndPassword,
    TResult? Function()? signInWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddressVO emailAddress, PasswordVO password)?
        registerWithEmailAndPassword,
    TResult Function(EmailAddressVO emailAddress, PasswordVO password)?
        signInWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(_SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res, SignInEvent>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_RegisterWithEmailAndPasswordCopyWith<$Res> {
  factory _$$_RegisterWithEmailAndPasswordCopyWith(
          _$_RegisterWithEmailAndPassword value,
          $Res Function(_$_RegisterWithEmailAndPassword) then) =
      __$$_RegisterWithEmailAndPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({EmailAddressVO emailAddress, PasswordVO password});
}

/// @nodoc
class __$$_RegisterWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$_RegisterWithEmailAndPassword>
    implements _$$_RegisterWithEmailAndPasswordCopyWith<$Res> {
  __$$_RegisterWithEmailAndPasswordCopyWithImpl(
      _$_RegisterWithEmailAndPassword _value,
      $Res Function(_$_RegisterWithEmailAndPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
  }) {
    return _then(_$_RegisterWithEmailAndPassword(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddressVO,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordVO,
    ));
  }
}

/// @nodoc

class _$_RegisterWithEmailAndPassword implements _RegisterWithEmailAndPassword {
  const _$_RegisterWithEmailAndPassword(
      {required this.emailAddress, required this.password});

  @override
  final EmailAddressVO emailAddress;
  @override
  final PasswordVO password;

  @override
  String toString() {
    return 'SignInEvent.registerWithEmailAndPassword(emailAddress: $emailAddress, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterWithEmailAndPassword &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailAddress, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterWithEmailAndPasswordCopyWith<_$_RegisterWithEmailAndPassword>
      get copyWith => __$$_RegisterWithEmailAndPasswordCopyWithImpl<
          _$_RegisterWithEmailAndPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddressVO emailAddress, PasswordVO password)
        registerWithEmailAndPassword,
    required TResult Function(EmailAddressVO emailAddress, PasswordVO password)
        signInWithEmailAndPassword,
    required TResult Function() signInWithGoogle,
  }) {
    return registerWithEmailAndPassword(emailAddress, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmailAddressVO emailAddress, PasswordVO password)?
        registerWithEmailAndPassword,
    TResult? Function(EmailAddressVO emailAddress, PasswordVO password)?
        signInWithEmailAndPassword,
    TResult? Function()? signInWithGoogle,
  }) {
    return registerWithEmailAndPassword?.call(emailAddress, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddressVO emailAddress, PasswordVO password)?
        registerWithEmailAndPassword,
    TResult Function(EmailAddressVO emailAddress, PasswordVO password)?
        signInWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPassword != null) {
      return registerWithEmailAndPassword(emailAddress, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(_SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
  }) {
    return registerWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
  }) {
    return registerWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPassword != null) {
      return registerWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class _RegisterWithEmailAndPassword implements SignInEvent {
  const factory _RegisterWithEmailAndPassword(
      {required final EmailAddressVO emailAddress,
      required final PasswordVO password}) = _$_RegisterWithEmailAndPassword;

  EmailAddressVO get emailAddress;
  PasswordVO get password;
  @JsonKey(ignore: true)
  _$$_RegisterWithEmailAndPasswordCopyWith<_$_RegisterWithEmailAndPassword>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignInWithEmailAndPasswordCopyWith<$Res> {
  factory _$$_SignInWithEmailAndPasswordCopyWith(
          _$_SignInWithEmailAndPassword value,
          $Res Function(_$_SignInWithEmailAndPassword) then) =
      __$$_SignInWithEmailAndPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({EmailAddressVO emailAddress, PasswordVO password});
}

/// @nodoc
class __$$_SignInWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$_SignInWithEmailAndPassword>
    implements _$$_SignInWithEmailAndPasswordCopyWith<$Res> {
  __$$_SignInWithEmailAndPasswordCopyWithImpl(
      _$_SignInWithEmailAndPassword _value,
      $Res Function(_$_SignInWithEmailAndPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
  }) {
    return _then(_$_SignInWithEmailAndPassword(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddressVO,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordVO,
    ));
  }
}

/// @nodoc

class _$_SignInWithEmailAndPassword implements _SignInWithEmailAndPassword {
  const _$_SignInWithEmailAndPassword(
      {required this.emailAddress, required this.password});

  @override
  final EmailAddressVO emailAddress;
  @override
  final PasswordVO password;

  @override
  String toString() {
    return 'SignInEvent.signInWithEmailAndPassword(emailAddress: $emailAddress, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInWithEmailAndPassword &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailAddress, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInWithEmailAndPasswordCopyWith<_$_SignInWithEmailAndPassword>
      get copyWith => __$$_SignInWithEmailAndPasswordCopyWithImpl<
          _$_SignInWithEmailAndPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddressVO emailAddress, PasswordVO password)
        registerWithEmailAndPassword,
    required TResult Function(EmailAddressVO emailAddress, PasswordVO password)
        signInWithEmailAndPassword,
    required TResult Function() signInWithGoogle,
  }) {
    return signInWithEmailAndPassword(emailAddress, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmailAddressVO emailAddress, PasswordVO password)?
        registerWithEmailAndPassword,
    TResult? Function(EmailAddressVO emailAddress, PasswordVO password)?
        signInWithEmailAndPassword,
    TResult? Function()? signInWithGoogle,
  }) {
    return signInWithEmailAndPassword?.call(emailAddress, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddressVO emailAddress, PasswordVO password)?
        registerWithEmailAndPassword,
    TResult Function(EmailAddressVO emailAddress, PasswordVO password)?
        signInWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword(emailAddress, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(_SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
  }) {
    return signInWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
  }) {
    return signInWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class _SignInWithEmailAndPassword implements SignInEvent {
  const factory _SignInWithEmailAndPassword(
      {required final EmailAddressVO emailAddress,
      required final PasswordVO password}) = _$_SignInWithEmailAndPassword;

  EmailAddressVO get emailAddress;
  PasswordVO get password;
  @JsonKey(ignore: true)
  _$$_SignInWithEmailAndPasswordCopyWith<_$_SignInWithEmailAndPassword>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignInWithGoogleCopyWith<$Res> {
  factory _$$_SignInWithGoogleCopyWith(
          _$_SignInWithGoogle value, $Res Function(_$_SignInWithGoogle) then) =
      __$$_SignInWithGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInWithGoogleCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$_SignInWithGoogle>
    implements _$$_SignInWithGoogleCopyWith<$Res> {
  __$$_SignInWithGoogleCopyWithImpl(
      _$_SignInWithGoogle _value, $Res Function(_$_SignInWithGoogle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignInWithGoogle implements _SignInWithGoogle {
  const _$_SignInWithGoogle();

  @override
  String toString() {
    return 'SignInEvent.signInWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignInWithGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddressVO emailAddress, PasswordVO password)
        registerWithEmailAndPassword,
    required TResult Function(EmailAddressVO emailAddress, PasswordVO password)
        signInWithEmailAndPassword,
    required TResult Function() signInWithGoogle,
  }) {
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmailAddressVO emailAddress, PasswordVO password)?
        registerWithEmailAndPassword,
    TResult? Function(EmailAddressVO emailAddress, PasswordVO password)?
        signInWithEmailAndPassword,
    TResult? Function()? signInWithGoogle,
  }) {
    return signInWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddressVO emailAddress, PasswordVO password)?
        registerWithEmailAndPassword,
    TResult Function(EmailAddressVO emailAddress, PasswordVO password)?
        signInWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(_SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
  }) {
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
  }) {
    return signInWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _SignInWithGoogle implements SignInEvent {
  const factory _SignInWithGoogle() = _$_SignInWithGoogle;
}
