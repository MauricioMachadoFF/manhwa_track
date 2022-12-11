import 'package:equatable/equatable.dart';
import 'package:manhwa_track/shared/domain/value_objects/unique_id/unique_id_vo.dart';

class Track extends Equatable {
  final UniqueIDVO id;
  final String title;
  final double chapter;
  final String url;
  final String status;
  final DateTime createdAt;
  final DateTime updatedAt;

  const Track({
    required this.id,
    required this.title,
    required this.chapter,
    required this.url,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        chapter,
        url,
        status,
        createdAt,
        updatedAt,
      ];
}
