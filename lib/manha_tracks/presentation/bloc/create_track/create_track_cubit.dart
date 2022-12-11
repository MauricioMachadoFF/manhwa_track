import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manhwa_track/manha_tracks/domain/entities/track.dart';
import 'package:manhwa_track/manha_tracks/domain/usecases/create_track.dart';

part 'create_track_cubit.freezed.dart';
part 'create_track_state.dart';

class CreateTrackCubit extends Cubit<CreateTrackState> {
  final CreateTrack _createTrack;
  CreateTrackCubit(this._createTrack) : super(const CreateTrackState.initial());

  Future<void> createNewTrack(Track track) async {
    emit(const CreateTrackState.loading());
    final successOrFailureCreation = await _createTrack(track);
    emit(
      successOrFailureCreation.fold(
        () => const CreateTrackState.sucess(),
        (_) => const CreateTrackState.error(),
      ),
    );
  }
}
