// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'selected_status_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SelectedStatusState {
  String get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectedStatusStateCopyWith<SelectedStatusState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedStatusStateCopyWith<$Res> {
  factory $SelectedStatusStateCopyWith(
          SelectedStatusState value, $Res Function(SelectedStatusState) then) =
      _$SelectedStatusStateCopyWithImpl<$Res, SelectedStatusState>;
  @useResult
  $Res call({String status});
}

/// @nodoc
class _$SelectedStatusStateCopyWithImpl<$Res, $Val extends SelectedStatusState>
    implements $SelectedStatusStateCopyWith<$Res> {
  _$SelectedStatusStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SelectedStatusStateCopyWith<$Res>
    implements $SelectedStatusStateCopyWith<$Res> {
  factory _$$_SelectedStatusStateCopyWith(_$_SelectedStatusState value,
          $Res Function(_$_SelectedStatusState) then) =
      __$$_SelectedStatusStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status});
}

/// @nodoc
class __$$_SelectedStatusStateCopyWithImpl<$Res>
    extends _$SelectedStatusStateCopyWithImpl<$Res, _$_SelectedStatusState>
    implements _$$_SelectedStatusStateCopyWith<$Res> {
  __$$_SelectedStatusStateCopyWithImpl(_$_SelectedStatusState _value,
      $Res Function(_$_SelectedStatusState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_SelectedStatusState(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectedStatusState implements _SelectedStatusState {
  const _$_SelectedStatusState(this.status);

  @override
  final String status;

  @override
  String toString() {
    return 'SelectedStatusState(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectedStatusState &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectedStatusStateCopyWith<_$_SelectedStatusState> get copyWith =>
      __$$_SelectedStatusStateCopyWithImpl<_$_SelectedStatusState>(
          this, _$identity);
}

abstract class _SelectedStatusState implements SelectedStatusState {
  const factory _SelectedStatusState(final String status) =
      _$_SelectedStatusState;

  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$_SelectedStatusStateCopyWith<_$_SelectedStatusState> get copyWith =>
      throw _privateConstructorUsedError;
}
