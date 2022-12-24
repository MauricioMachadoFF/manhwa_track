import 'package:dartz/dartz.dart';
import 'package:manhwa_track/core/failures.dart';
import 'package:manhwa_track/manha_tracks/domain/entities/track.dart';

abstract class TrackRepository {
  Future<Either<Failure, List<Track>>> getAllTracks();
  Future<Either<Failure, Unit>> createOrGetUserDoc();
  Future<Option<Failure>> createTrack(Track track);
  Future<Option<Failure>> updateTrack(Track track);
  Future<Option<Failure>> deleteTrack(String id);
}
