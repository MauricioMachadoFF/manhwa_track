import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manhwa_track/manha_tracks/domain/value_objects/chapter/chapter_vo.dart';
import 'package:manhwa_track/manha_tracks/domain/value_objects/title/title_vo.dart';
import 'package:manhwa_track/manha_tracks/domain/value_objects/url/url_vo.dart';

part 'validate_track_bloc.freezed.dart';
part 'validate_track_state.dart';
part 'validate_track_event.dart';

class ValidateTrackBloc extends Bloc<ValidateTrackEvent, ValidateTrackState> {
  ValidateTrackBloc() : super(ValidateTrackState.initial()) {
    on<ValidateTrackEvent>((event, emit) {
      event.when(
        validateTitle: (title) {
          emit(
            state.copyWith(
              titleErrorText: _validateTitle(title),
            ),
          );
        },
        validateChapter: (chapter) {
          emit(
            state.copyWith(
              chapterErrorText: _validateChapter(chapter),
            ),
          );
        },
        validateUrl: (url) {
          emit(
            state.copyWith(
              urlErrorText: _validateUrl(url),
            ),
          );
        },
        validateForm: (title, chapter, url) {
          final titleError = _validateTitle(title);
          final chapterError = _validateChapter(chapter);
          final urlError = _validateUrl(url);
          final isValid =
              titleError == null && chapterError == null && urlError == null;
          emit(
            state.copyWith(
              titleErrorText: titleError,
              chapterErrorText: chapterError,
              urlErrorText: urlError,
              isValid: isValid,
            ),
          );
        },
      );
    });
  }

  String? _validateTitle(String title) {
    return TitleVO(title).value.fold(
          (failure) => failure.message,
          (_) => null,
        );
  }

  String? _validateChapter(String chapter) {
    print('a');
    return ChapterVO(chapter).value.fold(
          (failure) => failure.message,
          (_) => null,
        );
  }

  String? _validateUrl(String url) {
    return UrlVO(url).value.fold(
          (failure) => failure.message,
          (_) => null,
        );
  }
}
