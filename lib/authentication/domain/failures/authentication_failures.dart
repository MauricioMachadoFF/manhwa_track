import 'package:manhwa_track/core/failures.dart';
import 'package:manhwa_track/generated/l10n.dart';

class CancelledByUserFailure extends Failure {
  CancelledByUserFailure()
      : super(
          message: S.current.auth_cancelled_by_user,
        );
}

class EmailAlreadyInUseFailure extends Failure {
  EmailAlreadyInUseFailure()
      : super(
          message: S.current.email_already_in_use,
        );
}

class NoUserWithThatEmailFailure extends Failure {
  NoUserWithThatEmailFailure()
      : super(
          message: S.current.no_user_with_that_email,
        );
}

class InvalidEmailAndPasswordCombinationFailure extends Failure {
  InvalidEmailAndPasswordCombinationFailure()
      : super(
          message: S.current.invalid_email_password_combination,
        );
}
