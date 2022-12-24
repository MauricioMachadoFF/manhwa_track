part of 'delete_track_cubit.dart';

@freezed
class DeleteTrackState with _$DeleteTrackState {
  const factory DeleteTrackState.error(String errorMessage) = _Error;
  const factory DeleteTrackState.loading() = _Loading;
  const factory DeleteTrackState.initial() = _Initial;
  const factory DeleteTrackState.sucess() = _Sucess;
}
