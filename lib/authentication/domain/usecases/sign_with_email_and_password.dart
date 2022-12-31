import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:manhwa_track/authentication/domain/repository/authentication_repository.dart';
import 'package:manhwa_track/authentication/domain/value_objects/auth_vo.dart';
import 'package:manhwa_track/core/failures.dart';

abstract class SignWithEmailAndPassword {
  Future<Either<Failure, Unit>> call({
    required EmailAddressVO emailAddress,
    required PasswordVO password,
  });
}

@Injectable(as: SignWithEmailAndPassword)
class SignWithEmailAndPasswordImpl implements SignWithEmailAndPassword {
  final AuthenticationRepository _repository;

  SignWithEmailAndPasswordImpl({
    required AuthenticationRepository repository,
  }) : _repository = repository;
  @override
  Future<Either<Failure, Unit>> call({
    required EmailAddressVO emailAddress,
    required PasswordVO password,
  }) async {
    return await _repository.signInWithEmailAndPassword(
      emailAddress: emailAddress,
      password: password,
    );
  }
}
