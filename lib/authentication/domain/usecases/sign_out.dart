import 'package:injectable/injectable.dart';
import 'package:manhwa_track/authentication/domain/repository/authentication_repository.dart';

abstract class SignOut {
  Future<void> call();
}

@Injectable(as: SignOut)
class SignOutImpl implements SignOut {
  final AuthenticationRepository _repository;

  SignOutImpl({
    required AuthenticationRepository repository,
  }) : _repository = repository;
  @override
  Future<void> call() async {
    return await _repository.signOut();
  }
}
