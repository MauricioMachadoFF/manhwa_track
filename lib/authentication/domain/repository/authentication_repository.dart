import 'package:dartz/dartz.dart';
import 'package:manhwa_track/authentication/domain/value_objects/auth_vo.dart';
import 'package:manhwa_track/core/failures.dart';
import 'package:manhwa_track/shared/domain/entities/user.dart';

abstract class AuthenticationRepository {
  Future<Option<ManhaUser>> getSignedUser();

  Future<Either<Failure, Unit>> registerWithEmailAndPassword({
    required EmailAddressVO emailAddress,
    required PasswordVO password,
  });

  Future<Either<Failure, Unit>> signInWithEmailAndPassword({
    required EmailAddressVO emailAddress,
    required PasswordVO password,
  });

  Future<Either<Failure, Unit>> signInWithGoogle();

  Future<void> signOut();
}
