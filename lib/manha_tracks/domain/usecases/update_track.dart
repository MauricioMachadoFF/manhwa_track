import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:manhwa_track/core/failures.dart';
import 'package:manhwa_track/manha_tracks/domain/entities/track.dart';
import 'package:manhwa_track/manha_tracks/domain/repositories/track_repository.dart';

abstract class UpdateTrack {
  Future<Option<Failure>> call(Track track);
}

@Injectable(as: UpdateTrack)
class UpdateTrackImpl implements UpdateTrack {
  final TrackRepository repository;

  const UpdateTrackImpl(this.repository);

  @override
  Future<Option<Failure>> call(Track track) async {
    return await repository.updateTrack(track);
  }
}
