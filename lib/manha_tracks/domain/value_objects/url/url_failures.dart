import 'package:manhwa_track/core/failures.dart';

class InvalidURL extends ValueFailure<String> {
  final String _failedValue;
  static const _errorMessage =
      'This URL is invalid. Check the tutorial button to see how to strcuture the URL.';

  const InvalidURL(
    this._failedValue,
  ) : super(
          message: _errorMessage,
        );

  @override
  String get failedValue => _failedValue;
}
