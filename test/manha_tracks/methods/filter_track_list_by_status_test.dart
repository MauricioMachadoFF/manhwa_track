import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:manhwa_track/manha_tracks/methods/filter_track_list_by_status.dart';

import '../mocks/track_entity_factory.dart';

void main() {
  late final FilterTrackListByStatus sup;
  late final DeepCollectionEquality equality;
  setUpAll(
    () {
      sup = const FilterTrackListByStatus();
      equality = const DeepCollectionEquality();
    },
  );

  test(
    'Filter a track list with a empty string status to filter - List must not be filtered',
    () {
      //arrange
      final trackList = TrackEntityFactory.buildTrackList(
        10,
        [
          'reading',
          'readlist',
          'completed',
          'unknown',
          'reading',
          'readlist',
          'completed',
          'unknown',
          'reading',
          'readlist',
        ],
      );

      //act
      final result = sup.call(trackList, '');

      //assert
      assert(equality.equals(trackList, result));
    },
  );

  test(
    'Filter a track list with a null status value to filter - List must not be filtered',
    () {
      //arrange
      final trackList = TrackEntityFactory.buildTrackList(
        10,
        [
          'reading',
          'readlist',
          'completed',
          'unknown',
          'reading',
          'readlist',
          'completed',
          'unknown',
          'reading',
          'readlist',
        ],
      );

      //act
      final result = sup.call(trackList, null);

      //assert
      assert(equality.equals(trackList, result));
    },
  );

  test(
    'Filter a track based on a valid status option - Reading, readlist, completed or finished',
    () {
      //arrange
      const statusToFilter = 'reading';
      final trackList = TrackEntityFactory.buildTrackList(
        10,
        [
          'reading',
          'readlist',
          'completed',
          'unknown',
          'reading',
          'readlist',
          'completed',
          'unknown',
          'reading',
          'readlist',
        ],
      );
      final expectedList = [
        TrackEntityFactory.buildSingleTrack(0, statusToFilter),
        TrackEntityFactory.buildSingleTrack(4, statusToFilter),
        TrackEntityFactory.buildSingleTrack(8, statusToFilter),
      ];

      //act
      final result = sup.call(trackList, statusToFilter);

      //assert
      assert(equality.equals(expectedList, result));
    },
  );

  test(
    'Filter a track based on a invalid status option - Any other than (Reading, readlist, completed or finished)',
    () {
      //arrange
      const statusToFilter = 'ação';
      final trackList = TrackEntityFactory.buildTrackList(
        10,
        [
          'reading',
          'readlist',
          'completed',
          'unknown',
          'reading',
          'readlist',
          'completed',
          'unknown',
          'reading',
          'readlist',
        ],
      );
      final expectedList = [
        TrackEntityFactory.buildSingleTrack(3, 'unknown'),
        TrackEntityFactory.buildSingleTrack(7, 'unknown'),
      ];

      //act
      final result = sup.call(trackList, statusToFilter);

      //assert
      assert(equality.equals(expectedList, result));
    },
  );
}
