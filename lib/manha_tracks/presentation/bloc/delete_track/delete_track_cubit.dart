import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manhwa_track/manha_tracks/domain/usecases/delete_track.dart';
import 'package:manhwa_track/shared/domain/value_objects/unique_id/unique_id_vo.dart';

part 'delete_track_cubit.freezed.dart';
part 'delete_track_state.dart';

class DeleteTrackCubit extends Cubit<DeleteTrackState> {
  final DeleteTrack _deleteTrack;
  DeleteTrackCubit({
    required DeleteTrack deleteTrack,
  })  : _deleteTrack = deleteTrack,
        super(
          const DeleteTrackState.initial(),
        );

  Future<void> delete(UniqueIDVO id) async {
    emit(const DeleteTrackState.loading());
    final deletedTrackOrFailure = await _deleteTrack(id.getOrCrash());
    emit(
      deletedTrackOrFailure.fold(
        () => const DeleteTrackState.sucess(),
        (failure) => DeleteTrackState.error(failure.message),
      ),
    );
  }
}
