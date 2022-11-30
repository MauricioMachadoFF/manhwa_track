import 'package:dartz/dartz.dart';
import 'package:manhwa_track/core/failures.dart';
import 'package:manhwa_track/core/value_object.dart';
import 'package:uuid/uuid.dart';

class UniqueIDVO extends ValueObject<String> {
  const UniqueIDVO._(this.value);

  factory UniqueIDVO() {
    return UniqueIDVO._(right(const Uuid().v4()));
  }
  factory UniqueIDVO.fromUniqueString(String value) {
    return UniqueIDVO._(right(value));
  }

  @override
  String toString() => 'EmailAddress($value)';

  @override
  final Either<ValueFailure<String>, String> value;
}
