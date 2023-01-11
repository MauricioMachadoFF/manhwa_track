import 'package:manhwa_track/core/failures.dart';
import 'package:manhwa_track/generated/l10n.dart';

class ShortPasswordFailure extends ValueFailure<String> {
  final String _failedValue;

  ShortPasswordFailure(
    this._failedValue,
  ) : super(message: S.current.password_should_be_8_char_long);

  @override
  String get failedValue => _failedValue;
}
