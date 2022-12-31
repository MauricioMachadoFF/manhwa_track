import 'package:manhwa_track/core/failures.dart';

class ExceedChapterFieldLengthLimit extends ValueFailure<String> {
  final String _failedValue;
  static const _errorMessage =
      'Chapter field con only contain up to 25 characters';

  const ExceedChapterFieldLengthLimit(
    this._failedValue,
  ) : super(
          message: _errorMessage,
        );

  @override
  String get failedValue => _failedValue;
}
