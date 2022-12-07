// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'validate_track_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValidateTrackState {
  String? get titleErrorText => throw _privateConstructorUsedError;
  String? get chapterErrorText => throw _privateConstructorUsedError;
  String? get urlErrorText => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValidateTrackStateCopyWith<ValidateTrackState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateTrackStateCopyWith<$Res> {
  factory $ValidateTrackStateCopyWith(
          ValidateTrackState value, $Res Function(ValidateTrackState) then) =
      _$ValidateTrackStateCopyWithImpl<$Res, ValidateTrackState>;
  @useResult
  $Res call(
      {String? titleErrorText,
      String? chapterErrorText,
      String? urlErrorText,
      bool isValid});
}

/// @nodoc
class _$ValidateTrackStateCopyWithImpl<$Res, $Val extends ValidateTrackState>
    implements $ValidateTrackStateCopyWith<$Res> {
  _$ValidateTrackStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titleErrorText = freezed,
    Object? chapterErrorText = freezed,
    Object? urlErrorText = freezed,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      titleErrorText: freezed == titleErrorText
          ? _value.titleErrorText
          : titleErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
      chapterErrorText: freezed == chapterErrorText
          ? _value.chapterErrorText
          : chapterErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
      urlErrorText: freezed == urlErrorText
          ? _value.urlErrorText
          : urlErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ValidateTrackStateCopyWith<$Res>
    implements $ValidateTrackStateCopyWith<$Res> {
  factory _$$_ValidateTrackStateCopyWith(_$_ValidateTrackState value,
          $Res Function(_$_ValidateTrackState) then) =
      __$$_ValidateTrackStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? titleErrorText,
      String? chapterErrorText,
      String? urlErrorText,
      bool isValid});
}

/// @nodoc
class __$$_ValidateTrackStateCopyWithImpl<$Res>
    extends _$ValidateTrackStateCopyWithImpl<$Res, _$_ValidateTrackState>
    implements _$$_ValidateTrackStateCopyWith<$Res> {
  __$$_ValidateTrackStateCopyWithImpl(
      _$_ValidateTrackState _value, $Res Function(_$_ValidateTrackState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titleErrorText = freezed,
    Object? chapterErrorText = freezed,
    Object? urlErrorText = freezed,
    Object? isValid = null,
  }) {
    return _then(_$_ValidateTrackState(
      titleErrorText: freezed == titleErrorText
          ? _value.titleErrorText
          : titleErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
      chapterErrorText: freezed == chapterErrorText
          ? _value.chapterErrorText
          : chapterErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
      urlErrorText: freezed == urlErrorText
          ? _value.urlErrorText
          : urlErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ValidateTrackState implements _ValidateTrackState {
  const _$_ValidateTrackState(
      {required this.titleErrorText,
      required this.chapterErrorText,
      required this.urlErrorText,
      required this.isValid});

  @override
  final String? titleErrorText;
  @override
  final String? chapterErrorText;
  @override
  final String? urlErrorText;
  @override
  final bool isValid;

  @override
  String toString() {
    return 'ValidateTrackState(titleErrorText: $titleErrorText, chapterErrorText: $chapterErrorText, urlErrorText: $urlErrorText, isValid: $isValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidateTrackState &&
            (identical(other.titleErrorText, titleErrorText) ||
                other.titleErrorText == titleErrorText) &&
            (identical(other.chapterErrorText, chapterErrorText) ||
                other.chapterErrorText == chapterErrorText) &&
            (identical(other.urlErrorText, urlErrorText) ||
                other.urlErrorText == urlErrorText) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, titleErrorText, chapterErrorText, urlErrorText, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValidateTrackStateCopyWith<_$_ValidateTrackState> get copyWith =>
      __$$_ValidateTrackStateCopyWithImpl<_$_ValidateTrackState>(
          this, _$identity);
}

abstract class _ValidateTrackState implements ValidateTrackState {
  const factory _ValidateTrackState(
      {required final String? titleErrorText,
      required final String? chapterErrorText,
      required final String? urlErrorText,
      required final bool isValid}) = _$_ValidateTrackState;

  @override
  String? get titleErrorText;
  @override
  String? get chapterErrorText;
  @override
  String? get urlErrorText;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$_ValidateTrackStateCopyWith<_$_ValidateTrackState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ValidateTrackEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) validateTitle,
    required TResult Function(String chapter) validateChapter,
    required TResult Function(String url) validateUrl,
    required TResult Function(String title, String chapter, String url)
        validateForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? validateTitle,
    TResult? Function(String chapter)? validateChapter,
    TResult? Function(String url)? validateUrl,
    TResult? Function(String title, String chapter, String url)? validateForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? validateTitle,
    TResult Function(String chapter)? validateChapter,
    TResult Function(String url)? validateUrl,
    TResult Function(String title, String chapter, String url)? validateForm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidateTitle value) validateTitle,
    required TResult Function(_ValidateChapter value) validateChapter,
    required TResult Function(_ValidateUrl value) validateUrl,
    required TResult Function(_ValidateForm value) validateForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidateTitle value)? validateTitle,
    TResult? Function(_ValidateChapter value)? validateChapter,
    TResult? Function(_ValidateUrl value)? validateUrl,
    TResult? Function(_ValidateForm value)? validateForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidateTitle value)? validateTitle,
    TResult Function(_ValidateChapter value)? validateChapter,
    TResult Function(_ValidateUrl value)? validateUrl,
    TResult Function(_ValidateForm value)? validateForm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateTrackEventCopyWith<$Res> {
  factory $ValidateTrackEventCopyWith(
          ValidateTrackEvent value, $Res Function(ValidateTrackEvent) then) =
      _$ValidateTrackEventCopyWithImpl<$Res, ValidateTrackEvent>;
}

/// @nodoc
class _$ValidateTrackEventCopyWithImpl<$Res, $Val extends ValidateTrackEvent>
    implements $ValidateTrackEventCopyWith<$Res> {
  _$ValidateTrackEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ValidateTitleCopyWith<$Res> {
  factory _$$_ValidateTitleCopyWith(
          _$_ValidateTitle value, $Res Function(_$_ValidateTitle) then) =
      __$$_ValidateTitleCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$_ValidateTitleCopyWithImpl<$Res>
    extends _$ValidateTrackEventCopyWithImpl<$Res, _$_ValidateTitle>
    implements _$$_ValidateTitleCopyWith<$Res> {
  __$$_ValidateTitleCopyWithImpl(
      _$_ValidateTitle _value, $Res Function(_$_ValidateTitle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$_ValidateTitle(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ValidateTitle implements _ValidateTitle {
  const _$_ValidateTitle(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'ValidateTrackEvent.validateTitle(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidateTitle &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValidateTitleCopyWith<_$_ValidateTitle> get copyWith =>
      __$$_ValidateTitleCopyWithImpl<_$_ValidateTitle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) validateTitle,
    required TResult Function(String chapter) validateChapter,
    required TResult Function(String url) validateUrl,
    required TResult Function(String title, String chapter, String url)
        validateForm,
  }) {
    return validateTitle(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? validateTitle,
    TResult? Function(String chapter)? validateChapter,
    TResult? Function(String url)? validateUrl,
    TResult? Function(String title, String chapter, String url)? validateForm,
  }) {
    return validateTitle?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? validateTitle,
    TResult Function(String chapter)? validateChapter,
    TResult Function(String url)? validateUrl,
    TResult Function(String title, String chapter, String url)? validateForm,
    required TResult orElse(),
  }) {
    if (validateTitle != null) {
      return validateTitle(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidateTitle value) validateTitle,
    required TResult Function(_ValidateChapter value) validateChapter,
    required TResult Function(_ValidateUrl value) validateUrl,
    required TResult Function(_ValidateForm value) validateForm,
  }) {
    return validateTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidateTitle value)? validateTitle,
    TResult? Function(_ValidateChapter value)? validateChapter,
    TResult? Function(_ValidateUrl value)? validateUrl,
    TResult? Function(_ValidateForm value)? validateForm,
  }) {
    return validateTitle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidateTitle value)? validateTitle,
    TResult Function(_ValidateChapter value)? validateChapter,
    TResult Function(_ValidateUrl value)? validateUrl,
    TResult Function(_ValidateForm value)? validateForm,
    required TResult orElse(),
  }) {
    if (validateTitle != null) {
      return validateTitle(this);
    }
    return orElse();
  }
}

abstract class _ValidateTitle implements ValidateTrackEvent {
  const factory _ValidateTitle(final String title) = _$_ValidateTitle;

  String get title;
  @JsonKey(ignore: true)
  _$$_ValidateTitleCopyWith<_$_ValidateTitle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ValidateChapterCopyWith<$Res> {
  factory _$$_ValidateChapterCopyWith(
          _$_ValidateChapter value, $Res Function(_$_ValidateChapter) then) =
      __$$_ValidateChapterCopyWithImpl<$Res>;
  @useResult
  $Res call({String chapter});
}

/// @nodoc
class __$$_ValidateChapterCopyWithImpl<$Res>
    extends _$ValidateTrackEventCopyWithImpl<$Res, _$_ValidateChapter>
    implements _$$_ValidateChapterCopyWith<$Res> {
  __$$_ValidateChapterCopyWithImpl(
      _$_ValidateChapter _value, $Res Function(_$_ValidateChapter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapter = null,
  }) {
    return _then(_$_ValidateChapter(
      null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ValidateChapter implements _ValidateChapter {
  const _$_ValidateChapter(this.chapter);

  @override
  final String chapter;

  @override
  String toString() {
    return 'ValidateTrackEvent.validateChapter(chapter: $chapter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidateChapter &&
            (identical(other.chapter, chapter) || other.chapter == chapter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chapter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValidateChapterCopyWith<_$_ValidateChapter> get copyWith =>
      __$$_ValidateChapterCopyWithImpl<_$_ValidateChapter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) validateTitle,
    required TResult Function(String chapter) validateChapter,
    required TResult Function(String url) validateUrl,
    required TResult Function(String title, String chapter, String url)
        validateForm,
  }) {
    return validateChapter(chapter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? validateTitle,
    TResult? Function(String chapter)? validateChapter,
    TResult? Function(String url)? validateUrl,
    TResult? Function(String title, String chapter, String url)? validateForm,
  }) {
    return validateChapter?.call(chapter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? validateTitle,
    TResult Function(String chapter)? validateChapter,
    TResult Function(String url)? validateUrl,
    TResult Function(String title, String chapter, String url)? validateForm,
    required TResult orElse(),
  }) {
    if (validateChapter != null) {
      return validateChapter(chapter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidateTitle value) validateTitle,
    required TResult Function(_ValidateChapter value) validateChapter,
    required TResult Function(_ValidateUrl value) validateUrl,
    required TResult Function(_ValidateForm value) validateForm,
  }) {
    return validateChapter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidateTitle value)? validateTitle,
    TResult? Function(_ValidateChapter value)? validateChapter,
    TResult? Function(_ValidateUrl value)? validateUrl,
    TResult? Function(_ValidateForm value)? validateForm,
  }) {
    return validateChapter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidateTitle value)? validateTitle,
    TResult Function(_ValidateChapter value)? validateChapter,
    TResult Function(_ValidateUrl value)? validateUrl,
    TResult Function(_ValidateForm value)? validateForm,
    required TResult orElse(),
  }) {
    if (validateChapter != null) {
      return validateChapter(this);
    }
    return orElse();
  }
}

abstract class _ValidateChapter implements ValidateTrackEvent {
  const factory _ValidateChapter(final String chapter) = _$_ValidateChapter;

  String get chapter;
  @JsonKey(ignore: true)
  _$$_ValidateChapterCopyWith<_$_ValidateChapter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ValidateUrlCopyWith<$Res> {
  factory _$$_ValidateUrlCopyWith(
          _$_ValidateUrl value, $Res Function(_$_ValidateUrl) then) =
      __$$_ValidateUrlCopyWithImpl<$Res>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$_ValidateUrlCopyWithImpl<$Res>
    extends _$ValidateTrackEventCopyWithImpl<$Res, _$_ValidateUrl>
    implements _$$_ValidateUrlCopyWith<$Res> {
  __$$_ValidateUrlCopyWithImpl(
      _$_ValidateUrl _value, $Res Function(_$_ValidateUrl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$_ValidateUrl(
      null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ValidateUrl implements _ValidateUrl {
  const _$_ValidateUrl(this.url);

  @override
  final String url;

  @override
  String toString() {
    return 'ValidateTrackEvent.validateUrl(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidateUrl &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValidateUrlCopyWith<_$_ValidateUrl> get copyWith =>
      __$$_ValidateUrlCopyWithImpl<_$_ValidateUrl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) validateTitle,
    required TResult Function(String chapter) validateChapter,
    required TResult Function(String url) validateUrl,
    required TResult Function(String title, String chapter, String url)
        validateForm,
  }) {
    return validateUrl(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? validateTitle,
    TResult? Function(String chapter)? validateChapter,
    TResult? Function(String url)? validateUrl,
    TResult? Function(String title, String chapter, String url)? validateForm,
  }) {
    return validateUrl?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? validateTitle,
    TResult Function(String chapter)? validateChapter,
    TResult Function(String url)? validateUrl,
    TResult Function(String title, String chapter, String url)? validateForm,
    required TResult orElse(),
  }) {
    if (validateUrl != null) {
      return validateUrl(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidateTitle value) validateTitle,
    required TResult Function(_ValidateChapter value) validateChapter,
    required TResult Function(_ValidateUrl value) validateUrl,
    required TResult Function(_ValidateForm value) validateForm,
  }) {
    return validateUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidateTitle value)? validateTitle,
    TResult? Function(_ValidateChapter value)? validateChapter,
    TResult? Function(_ValidateUrl value)? validateUrl,
    TResult? Function(_ValidateForm value)? validateForm,
  }) {
    return validateUrl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidateTitle value)? validateTitle,
    TResult Function(_ValidateChapter value)? validateChapter,
    TResult Function(_ValidateUrl value)? validateUrl,
    TResult Function(_ValidateForm value)? validateForm,
    required TResult orElse(),
  }) {
    if (validateUrl != null) {
      return validateUrl(this);
    }
    return orElse();
  }
}

abstract class _ValidateUrl implements ValidateTrackEvent {
  const factory _ValidateUrl(final String url) = _$_ValidateUrl;

  String get url;
  @JsonKey(ignore: true)
  _$$_ValidateUrlCopyWith<_$_ValidateUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ValidateFormCopyWith<$Res> {
  factory _$$_ValidateFormCopyWith(
          _$_ValidateForm value, $Res Function(_$_ValidateForm) then) =
      __$$_ValidateFormCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String chapter, String url});
}

/// @nodoc
class __$$_ValidateFormCopyWithImpl<$Res>
    extends _$ValidateTrackEventCopyWithImpl<$Res, _$_ValidateForm>
    implements _$$_ValidateFormCopyWith<$Res> {
  __$$_ValidateFormCopyWithImpl(
      _$_ValidateForm _value, $Res Function(_$_ValidateForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? chapter = null,
    Object? url = null,
  }) {
    return _then(_$_ValidateForm(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ValidateForm implements _ValidateForm {
  const _$_ValidateForm(
      {required this.title, required this.chapter, required this.url});

  @override
  final String title;
  @override
  final String chapter;
  @override
  final String url;

  @override
  String toString() {
    return 'ValidateTrackEvent.validateForm(title: $title, chapter: $chapter, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidateForm &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.chapter, chapter) || other.chapter == chapter) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, chapter, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValidateFormCopyWith<_$_ValidateForm> get copyWith =>
      __$$_ValidateFormCopyWithImpl<_$_ValidateForm>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) validateTitle,
    required TResult Function(String chapter) validateChapter,
    required TResult Function(String url) validateUrl,
    required TResult Function(String title, String chapter, String url)
        validateForm,
  }) {
    return validateForm(title, chapter, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? validateTitle,
    TResult? Function(String chapter)? validateChapter,
    TResult? Function(String url)? validateUrl,
    TResult? Function(String title, String chapter, String url)? validateForm,
  }) {
    return validateForm?.call(title, chapter, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? validateTitle,
    TResult Function(String chapter)? validateChapter,
    TResult Function(String url)? validateUrl,
    TResult Function(String title, String chapter, String url)? validateForm,
    required TResult orElse(),
  }) {
    if (validateForm != null) {
      return validateForm(title, chapter, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidateTitle value) validateTitle,
    required TResult Function(_ValidateChapter value) validateChapter,
    required TResult Function(_ValidateUrl value) validateUrl,
    required TResult Function(_ValidateForm value) validateForm,
  }) {
    return validateForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidateTitle value)? validateTitle,
    TResult? Function(_ValidateChapter value)? validateChapter,
    TResult? Function(_ValidateUrl value)? validateUrl,
    TResult? Function(_ValidateForm value)? validateForm,
  }) {
    return validateForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidateTitle value)? validateTitle,
    TResult Function(_ValidateChapter value)? validateChapter,
    TResult Function(_ValidateUrl value)? validateUrl,
    TResult Function(_ValidateForm value)? validateForm,
    required TResult orElse(),
  }) {
    if (validateForm != null) {
      return validateForm(this);
    }
    return orElse();
  }
}

abstract class _ValidateForm implements ValidateTrackEvent {
  const factory _ValidateForm(
      {required final String title,
      required final String chapter,
      required final String url}) = _$_ValidateForm;

  String get title;
  String get chapter;
  String get url;
  @JsonKey(ignore: true)
  _$$_ValidateFormCopyWith<_$_ValidateForm> get copyWith =>
      throw _privateConstructorUsedError;
}
