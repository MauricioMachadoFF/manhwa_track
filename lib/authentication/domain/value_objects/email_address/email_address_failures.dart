import 'package:manhwa_track/core/failures.dart';
import 'package:manhwa_track/generated/l10n.dart';

class InvalidEmailFailure extends ValueFailure<String> {
  final String _failedValue;

  InvalidEmailFailure(
    this._failedValue,
  ) : super(message: S.current.invalid_email);

  @override
  String get failedValue => _failedValue;
}
