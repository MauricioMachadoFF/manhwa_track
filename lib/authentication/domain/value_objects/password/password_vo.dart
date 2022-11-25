import 'package:manhwa_track/authentication/domain/value_objects/password/password_failures.dart';
import 'package:manhwa_track/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:manhwa_track/core/value_object.dart';

class PasswordVO extends ValueObject<String> {
  const PasswordVO._(this.value);

  factory PasswordVO(String value) {
    return PasswordVO._(
      _validatePassword(value),
    );
  }

  @override
  final Either<ValueFailure<String>, String> value;
}

Either<ValueFailure<String>, String> _validatePassword(String value) {
  //TODO(Mauricio): Improve password validation logic
  if (value.length >= 8) {
    return Right(value);
  }
  return Left(ShortPasswordFailure(value));
}
