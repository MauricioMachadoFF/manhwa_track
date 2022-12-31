import 'package:dartz/dartz.dart';
export 'package:manhwa_track/authentication/domain/value_objects/email_address/email_address_failures.dart';
import 'package:manhwa_track/core/failures.dart';
import 'package:manhwa_track/core/value_object.dart';

import 'email_address_failures.dart';

class EmailAddressVO extends ValueObject<String> {
  const EmailAddressVO._(this.value);

  factory EmailAddressVO(String value) {
    return EmailAddressVO._(
      _validateEmailAddress(value),
    );
  }

  @override
  String toString() => 'EmailAddress($value)';

  @override
  final Either<ValueFailure<String>, String> value;
}

Either<ValueFailure<String>, String> _validateEmailAddress(String value) {
  //TODO(Mauricio): Inhance email securiy regex
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(value)) {
    return Right(value);
  }
  return Left(InvalidEmailFailure(value));
}
