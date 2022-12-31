import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:manhwa_track/authentication/domain/repository/authentication_repository.dart';
import 'package:manhwa_track/shared/domain/entities/user.dart';

abstract class GetSignedUser {
  Future<Option<ManhaUser>> call();
}

@Injectable(as: GetSignedUser)
class GetSignedUserImpl implements GetSignedUser {
  final AuthenticationRepository _repository;

  GetSignedUserImpl({
    required AuthenticationRepository repository,
  }) : _repository = repository;
  @override
  Future<Option<ManhaUser>> call() async {
    return await _repository.getSignedUser();
  }
}
