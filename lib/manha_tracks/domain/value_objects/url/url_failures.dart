import 'package:manhwa_track/core/failures.dart';
import 'package:manhwa_track/generated/l10n.dart';

class InvalidURL extends ValueFailure<String> {
  final String _failedValue;

  InvalidURL(
    this._failedValue,
  ) : super(message: S.current.invalid_url);

  @override
  String get failedValue => _failedValue;
}
