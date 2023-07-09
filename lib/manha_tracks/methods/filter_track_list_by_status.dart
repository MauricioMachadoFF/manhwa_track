import '../domain/entities/track.dart';

class FilterTrackListByStatus {
  const FilterTrackListByStatus();
  List<Track> call(
    List<Track> trackList,
    String? statusToFilter,
  ) {
    if (statusToFilter == null || statusToFilter.isEmpty) {
      return trackList;
    }

    final mappedStatus = _mapStatus(statusToFilter);

    List<Track> filteredList = [];
    for (final track in trackList) {
      if (track.status == mappedStatus) {
        filteredList.add(track);
      }
    }
    return filteredList;
  }

  String _mapStatus(String status) {
    switch (status) {
      case 'reading':
      case 'completed':
      case 'readlist':
      case 'unknown':
        return status;
      default:
        return 'unknown';
    }
  }
}
