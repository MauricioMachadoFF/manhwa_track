part of 'create_track_cubit.dart';

@freezed
class CreateTrackState with _$CreateTrackState {
  const factory CreateTrackState.initial() = _Initial;
  const factory CreateTrackState.loading() = _Loading;
  const factory CreateTrackState.sucess() = _Loaded;
  const factory CreateTrackState.error() = _Error;
}
