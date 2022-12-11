import 'package:manhwa_track/manha_tracks/data/model/track_model.dart';
import 'package:manhwa_track/manha_tracks/domain/entities/track.dart';
import 'package:manhwa_track/shared/domain/value_objects/unique_id/unique_id_vo.dart';

abstract class TrackMapper {
  static Track toEntity(TrackModel model) {
    return Track(
      id: UniqueIDVO.fromUniqueString(model.id),
      title: model.title,
      chapter: model.chapter,
      url: model.url,
      status: model.status,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
    );
  }

  static TrackModel toModel(Track entity) {
    return TrackModel(
      id: entity.id.getOrCrash(),
      title: entity.title,
      chapter: entity.chapter,
      url: entity.url,
      status: entity.status,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }
}
