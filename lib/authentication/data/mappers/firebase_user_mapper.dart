import 'package:firebase_auth/firebase_auth.dart';
import 'package:manhwa_track/shared/domain/entities/user.dart';
import 'package:manhwa_track/shared/domain/value_objects/unique_id/unique_id_vo.dart';

extension FirebaseUserDomain on User {
  ManhaUser toDomain() {
    return ManhaUser(
      id: UniqueIDVO.fromUniqueString(uid),
    );
  }
}
