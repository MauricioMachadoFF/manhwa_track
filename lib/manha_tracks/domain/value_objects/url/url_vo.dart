import 'package:manhwa_track/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:manhwa_track/core/value_object.dart';

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
  //TODO(Mauricio): See if url is safe before allowing to insert
  if (value.isNotEmpty) {
    return Right(value);
  }
  return Left(EmptyFieldFailure(value));
}
