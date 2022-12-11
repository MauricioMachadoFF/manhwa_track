import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:manhwa_track/core/failures.dart';
import 'package:manhwa_track/manha_tracks/domain/repositories/track_repository.dart';

abstract class CreateUserDoc {
  Future<Either<Failure, Unit>> call();
}

@Injectable(as: CreateUserDoc)
class CreateUserDocImpl implements CreateUserDoc {
  final TrackRepository repository;

  CreateUserDocImpl(this.repository);

  @override
  Future<Either<Failure, Unit>> call() async {
    return await repository.createOrGetUserDoc();
  }
}
