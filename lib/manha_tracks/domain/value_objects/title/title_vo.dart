import 'package:manhwa_track/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:manhwa_track/core/value_object.dart';

class TitleVO extends ValueObject<String> {
  const TitleVO._(this.value);

  factory TitleVO(String value) {
    return TitleVO._(
      _validateTitle(value),
    );
  }

  @override
  final Either<ValueFailure<String>, String> value;
}

Either<ValueFailure<String>, String> _validateTitle(String value) {
  //TODO(Mauricio): See if title has passes char limit
  if (value.isNotEmpty) {
    return Right(value);
  }
  return Left(EmptyFieldFailure(value));
}
