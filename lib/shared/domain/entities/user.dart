import 'package:equatable/equatable.dart';
import 'package:manhwa_track/shared/domain/value_objects/unique_id/unique_id_vo.dart';

class ManhaUser extends Equatable {
  final UniqueIDVO id;

  const ManhaUser({
    required this.id,
  });

  @override
  List get props => [id];
}
