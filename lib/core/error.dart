import 'package:manhwa_track/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    String explanation =
        'Encontered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}

class UnexpectedAccessError extends Error {
  final String message;
  final String where;

  UnexpectedAccessError({
    required this.message,
    required this.where,
  });

  @override
  String toString() {
    String explanation = 'Unexpected access on $where Terminating.';
    return Error.safeToString('$explanation Failure was: $message');
  }
}
