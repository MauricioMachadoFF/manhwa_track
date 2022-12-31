import 'package:manhwa_track/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:manhwa_track/core/value_object.dart';
import 'package:manhwa_track/manha_tracks/domain/value_objects/chapter/chapter_failures.dart';

class ChapterVO extends ValueObject<String> {
  const ChapterVO._(this.value);

  factory ChapterVO(String value) {
    return ChapterVO._(
      _validateChapter(value),
    );
  }

  @override
  final Either<ValueFailure<String>, String> value;
}

Either<ValueFailure<String>, String> _validateChapter(String value) {
  const chapterLengthLimit = 25;
  if (value.isEmpty) {
    return Left(EmptyFieldFailure(value));
  }
  if (value.length > chapterLengthLimit) {
    return Left(ExceedChapterFieldLengthLimit(value));
  }
  return Right(value);
}
