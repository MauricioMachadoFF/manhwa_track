import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manhwa_track/manha_tracks/domain/entities/track.dart';
import 'package:manhwa_track/manha_tracks/domain/usecases/create_user_doc.dart';
import 'package:manhwa_track/manha_tracks/domain/usecases/get_all_tracks.dart';

part 'load_track_cubit.freezed.dart';
part 'load_track_state.dart';

class LoadTrackCubit extends Cubit<LoadTrackState> {
  final GetAllTrack getAllTrack;
  final CreateUserDoc createUserDoc;
  LoadTrackCubit({
    required this.getAllTrack,
    required this.createUserDoc,
  }) : super(const LoadTrackState.loading());

  Future<void> loadTracksOnSignIn() async {
    emit(const LoadTrackState.loading());
    final userDocOrFailure = await createUserDoc();
    emit(
      await userDocOrFailure.fold(
        (_) => const LoadTrackState.error(),
        (_) async {
          final trackListOrFailure = await getAllTrack();
          return trackListOrFailure.fold(
            (_) => const LoadTrackState.error(),
            LoadTrackState.loaded,
          );
        },
      ),
    );
  }

  Future<void> loadTracks() async {
    emit(const LoadTrackState.loading());
    final trackListOrFailure = await getAllTrack();
    emit(
      trackListOrFailure.fold(
        (_) => const LoadTrackState.error(),
        LoadTrackState.loaded,
      ),
    );
  }
}
