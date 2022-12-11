import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'track_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class TrackModel extends Equatable {
  final String id;
  final String title;
  final double chapter;
  final String url;
  final String status;
  final DateTime createdAt;
  final DateTime updatedAt;

  const TrackModel({
    required this.id,
    required this.title,
    required this.chapter,
    required this.url,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory TrackModel.fromJson(Map<String, dynamic> json) =>
      _$TrackModelFromJson(json);

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
