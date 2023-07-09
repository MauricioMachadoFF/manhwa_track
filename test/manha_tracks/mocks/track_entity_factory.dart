import 'package:manhwa_track/manha_tracks/domain/entities/track.dart';
import 'package:manhwa_track/shared/domain/value_objects/unique_id/unique_id_vo.dart';

abstract class TrackEntityFactory {
  static Track buildSingleTrack(int index, String status) {
    return Track(
      id: UniqueIDVO.fromUniqueString('Track$index'),
      title: 'Title$index',
      chapter: 'Chapter$index',
      url: 'url$index',
      status: status,
      createdAt: DateTime(2023),
      updatedAt: DateTime(2023),
    );
  }

  /// Length of list statuses must be equal to length parameter
  static List<Track> buildTrackList(int length, List<String> statuses) {
    List<Track> trackList = [];
    for (int i = 0; i < length; i++) {
      trackList.add(
        buildSingleTrack(
          i,
          statuses.elementAt(i),
        ),
      );
    }
    return trackList;
  }
}
