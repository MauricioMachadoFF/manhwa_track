import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:manhwa_track/core/failures.dart';
import 'package:manhwa_track/manha_tracks/domain/entities/track.dart';
import 'package:manhwa_track/manha_tracks/domain/repositories/track_repository.dart';

abstract class GetAllTrack {
  Future<Either<Failure, List<Track>>> call();
}

@Injectable(as: GetAllTrack)
class GetAllTrackImpl implements GetAllTrack {
  final TrackRepository repository;

  GetAllTrackImpl(this.repository);

  @override
  Future<Either<Failure, List<Track>>> call() async {
    return await repository.getAllTracks();
  }
}
