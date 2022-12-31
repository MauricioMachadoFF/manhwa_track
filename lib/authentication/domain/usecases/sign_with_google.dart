import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:manhwa_track/authentication/domain/repository/authentication_repository.dart';
import 'package:manhwa_track/core/failures.dart';

abstract class SignWithGoogle {
  Future<Either<Failure, Unit>> call();
}

@Injectable(as: SignWithGoogle)
class SignWithGoogleImpl implements SignWithGoogle {
  final AuthenticationRepository _repository;

  SignWithGoogleImpl({
    required AuthenticationRepository repository,
  }) : _repository = repository;
  @override
  Future<Either<Failure, Unit>> call() async {
    return await _repository.signInWithGoogle();
  }
}
