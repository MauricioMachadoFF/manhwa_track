part of 'load_track_cubit.dart';

@freezed
class LoadTrackState with _$LoadTrackState {
  const factory LoadTrackState.error() = _Error;
  const factory LoadTrackState.loading() = _Loading;
  const factory LoadTrackState.loaded(List<Track> tracks) = _Loaded;
}
