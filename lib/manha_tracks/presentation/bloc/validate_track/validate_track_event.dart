part of 'validate_track_bloc.dart';

@freezed
class ValidateTrackEvent with _$ValidateTrackEvent {
  const factory ValidateTrackEvent.validateTitle(
    String title,
  ) = _ValidateTitle;
  const factory ValidateTrackEvent.validateChapter(
    String chapter,
  ) = _ValidateChapter;
  const factory ValidateTrackEvent.validateUrl(
    String url,
  ) = _ValidateUrl;
  const factory ValidateTrackEvent.validateForm({
    required String title,
    required String chapter,
    required String url,
  }) = _ValidateForm;
}
