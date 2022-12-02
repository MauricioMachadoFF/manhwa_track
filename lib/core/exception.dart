class ManhwaException implements Exception {
  final String message;

  const ManhwaException(this.message);

  @override
  String toString() {
    return 'Exception: $message';
  }
}

class MissingParamsException extends ManhwaException {
  const MissingParamsException(super.message);
}

class InvalidParamsException extends ManhwaException {
  const InvalidParamsException() : super('Wrong set of params has been passed');
}
