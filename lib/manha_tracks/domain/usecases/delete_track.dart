import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:manhwa_track/core/failures.dart';
import 'package:manhwa_track/manha_tracks/domain/repositories/track_repository.dart';

abstract class DeleteTrack {
  Future<Option<Failure>> call(String id);
}

@Injectable(as: DeleteTrack)
class DeleteTrackImpl implements DeleteTrack {
  final TrackRepository repository;

  DeleteTrackImpl(this.repository);

  @override
  Future<Option<Failure>> call(String id) async {
    return await repository.deleteTrack(id);
  }
}
