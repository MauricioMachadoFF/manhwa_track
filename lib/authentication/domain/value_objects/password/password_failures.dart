import 'package:manhwa_track/core/failures.dart';

class ShortPasswordFailure extends ValueFailure<String> {
  final String _failedValue;
  static const _errorMessage = 'Password must be a least 8 characters long';

  const ShortPasswordFailure(
    this._failedValue,
  ) : super(
          message: _errorMessage,
        );

  @override
  String get failedValue => _failedValue;
}
