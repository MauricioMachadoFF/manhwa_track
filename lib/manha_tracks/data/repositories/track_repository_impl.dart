import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:manhwa_track/core/firestore/firestore_collections.dart';
import 'package:manhwa_track/core/firestore/firestore_fields.dart';
import 'package:manhwa_track/core/logger.dart';
import 'package:manhwa_track/manha_tracks/data/mapper/track_mapper.dart';
import 'package:manhwa_track/manha_tracks/data/model/track_model.dart';
import 'package:manhwa_track/manha_tracks/domain/entities/track.dart';
import 'package:manhwa_track/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:manhwa_track/manha_tracks/domain/repositories/track_repository.dart';
import 'package:manhwa_track/shared/domain/value_objects/unique_id/unique_id_vo.dart';

@Injectable(as: TrackRepository)
class TrackRepositoryImpl implements TrackRepository {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;

  TrackRepositoryImpl(
    this._firebaseAuth,
    this._firestore,
  );

  String? get _userId => _firebaseAuth.currentUser?.uid;

  @override
  Future<Either<Failure, Unit>> createOrGetUserDoc() async {
    try {
      final userId = _userId;
      if (userId == null) return const Left(UserIdEmptyFailure());
      final userDoc = await _firestore.collection(users).doc(userId).get();
      if (!(userDoc.exists)) {
        await _firestore.collection(users).doc(userId).set({});
        final dummyTrackEntry = Track(
          id: UniqueIDVO(),
          title: 'Dummy title',
          chapter: '0',
          url: '',
          status: 'Dummy',
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        );
        await _firestore
            .collection(users)
            .doc(userId)
            .collection(tracks)
            .doc(dummyTrackEntry.id.getOrCrash())
            .set(_trackMap(dummyTrackEntry));
      }
      return const Right(unit);
    } catch (_) {
      return Left(_onUnhandledError());
    }
  }

  @override
  Future<Either<Failure, List<Track>>> getAllTracks() async {
    try {
      final userId = _userId;
      final rawTracks = await _firestore
          .collection(users)
          .doc(userId)
          .collection(tracks)
          .orderBy(updatedAt, descending: true)
          .get();
      final tracksModel = rawTracks.docs
          .map((rawTrack) => TrackModel.fromJson(rawTrack.data()));
      final tracksList = tracksModel
          .map((trackModel) => TrackMapper.toEntity(trackModel))
          .toList();
      tracksList.removeLast();
      return Right(tracksList);
    } catch (_) {
      return Left(_onUnhandledError());
    }
  }

  @override
  Future<Option<Failure>> createTrack(Track track) async {
    try {
      final userId = _userId;
      await _firestore
          .collection(users)
          .doc(userId)
          .collection(tracks)
          .doc(track.id.getOrCrash())
          .set(_trackMap(track));
      return const None();
    } catch (_) {
      return Some(_onUnhandledError());
    }
  }

  Map<String, dynamic> _trackMap(Track track) {
    return {
      'id': track.id.getOrCrash(),
      'title': track.title,
      'chapter': track.chapter,
      'url': track.url,
      'status': track.status,
      'created_at': track.createdAt.toString(),
      'updated_at': track.updatedAt.toString(),
    };
  }

  Failure _onUnhandledError() {
    const message = 'Ops! We could not fetch your tracks';
    Logger().logError(where: 'Data - getAllTracks', message: message);
    return const UnhandledFailure(message: message);
  }

  @override
  Future<Option<Failure>> updateTrack(Track track) async {
    try {
      final userId = _userId;
      await _firestore
          .collection(users)
          .doc(userId)
          .collection(tracks)
          .doc(track.id.getOrCrash())
          .update(
            _trackMap(track),
          );
      return const None();
    } catch (_) {
      const message = 'We could not update this track now.';
      Logger().logError(where: 'Data - updateTrack', message: message);
      return const Some(UnhandledFailure(message: message));
    }
  }

  @override
  Future<Option<Failure>> deleteTrack(String id) async {
    try {
      final userId = _userId;
      await _firestore
          .collection(users)
          .doc(userId)
          .collection(tracks)
          .doc(id)
          .delete();
      return const None();
    } catch (_) {
      const message = 'Failed to delete track. Try again later.';
      Logger().logError(where: 'Data - updateTrack', message: message);
      return const Some(UnhandledFailure(message: message));
    }
  }
}
