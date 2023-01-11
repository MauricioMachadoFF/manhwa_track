import 'package:manhwa_track/core/failures.dart';
import 'package:manhwa_track/generated/l10n.dart';

class ExceedChapterFieldLengthLimit extends ValueFailure<String> {
  final String _failedValue;

  ExceedChapterFieldLengthLimit(
    this._failedValue,
  ) : super(message: S.current.chapter_max_length_error);

  @override
  String get failedValue => _failedValue;
}
