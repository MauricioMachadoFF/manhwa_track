import 'package:dartz/dartz.dart';
import 'package:manhwa_track/authentication/domain/value_objects/email_address/email_address_vo.dart';
import 'package:manhwa_track/authentication/domain/value_objects/password/password_vo.dart';
import 'package:manhwa_track/core/failures.dart';

abstract class AuthFacadeInterface {
  Future<Either<Failure, Unit>> registerWithEmailAndPassword({
    required EmailAddressVO emailAddress,
    required PasswordVO password,
  });

  Future<Either<Failure, Unit>> signInWithEmailAndPassword({
    required EmailAddressVO emailAddress,
    required PasswordVO password,
  });

  Future<Either<Failure, Unit>> signInWithGoogle();
}
