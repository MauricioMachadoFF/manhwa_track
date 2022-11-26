import 'package:manhwa_track/core/failures.dart';

class CancelledByUserFailure extends Failure {
  const CancelledByUserFailure()
      : super(message: 'Authentication operation has been cancelled by user');
}

class EmailAlreadyInUseFailure extends Failure {
  const EmailAlreadyInUseFailure() : super(message: 'Email is already in use');
}

class NoUserWithThatEmailFailure extends Failure {
  const NoUserWithThatEmailFailure()
      : super(message: "There's no user with that email");
}

class InvalidEmailAndPasswordCombinationFailure extends Failure {
  const InvalidEmailAndPasswordCombinationFailure()
      : super(message: 'Invalid email and password combination');
}
