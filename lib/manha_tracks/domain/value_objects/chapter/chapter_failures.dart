import 'package:manhwa_track/core/failures.dart';

class InvalidChapterNumberFailure extends ValueFailure<String> {
  final String _failedValue;
  static const _errorMessage = 'Chapter must only contain digits';

  const InvalidChapterNumberFailure(
    this._failedValue,
  ) : super(
          message: _errorMessage,
        );

  @override
  String get failedValue => _failedValue;
}
