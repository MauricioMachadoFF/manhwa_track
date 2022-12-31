import 'package:manhwa_track/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:manhwa_track/core/value_object.dart';
import 'package:manhwa_track/manha_tracks/domain/value_objects/url/url_failures.dart';

class UrlVO extends ValueObject<String> {
  const UrlVO._(this.value);

  factory UrlVO(String value) {
    return UrlVO._(
      _validateUrl(value),
    );
  }

  @override
  final Either<ValueFailure<String>, String> value;
}

Either<ValueFailure<String>, String> _validateUrl(String value) {
  if (value.isEmpty) {
    return Right(value);
  }
  final url = Uri.tryParse(value);
  if (url?.hasAbsolutePath ?? false) {
    return Right(value);
  }
  return Left(InvalidURL(value));
}
