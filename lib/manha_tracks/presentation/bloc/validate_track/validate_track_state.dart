part of 'validate_track_bloc.dart';

@freezed
class ValidateTrackState with _$ValidateTrackState {
  const factory ValidateTrackState({
    required String? titleErrorText,
    required String? chapterErrorText,
    required String? urlErrorText,
    required bool isValid,
  }) = _ValidateTrackState;

  factory ValidateTrackState.initial() => const ValidateTrackState(
        titleErrorText: null,
        chapterErrorText: null,
        urlErrorText: null,
        isValid: false,
      );
}
