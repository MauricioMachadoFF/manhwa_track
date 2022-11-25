import 'package:manhwa_track/core/failures.dart';

class InvalidEmailFailure extends ValueFailure<String> {
  final String _failedValue;
  static const _errorMessage = 'Invalid email';

  const InvalidEmailFailure(
    this._failedValue,
  ) : super(
          message: _errorMessage,
        );

  @override
  String get failedValue => _failedValue;
}
