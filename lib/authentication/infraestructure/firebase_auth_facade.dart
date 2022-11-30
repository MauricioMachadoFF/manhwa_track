import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:manhwa_track/authentication/domain/auth_facade_interface.dart';
import 'package:manhwa_track/authentication/domain/auth_failures.dart';
import 'package:manhwa_track/core/failures.dart';
import 'package:manhwa_track/authentication/domain/value_objects/password/password_vo.dart';
import 'package:manhwa_track/authentication/domain/value_objects/email_address/email_address_vo.dart';
import 'package:manhwa_track/shared/domain/entities/user.dart';
import './firebase_user_mapper.dart';

@LazySingleton(as: AuthFacadeInterface)
class FirebaseAuthFacade implements AuthFacadeInterface {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
  );

  @override
  Future<Option<ManhaUser>> getSignedUser() async {
    final firebaseUser = _firebaseAuth.currentUser;
    if (firebaseUser != null) {
      return Some(firebaseUser.toDomain());
    }
    return const None();
  }

  @override
  Future<Either<Failure, Unit>> registerWithEmailAndPassword({
    required EmailAddressVO emailAddress,
    required PasswordVO password,
  }) async {
    final emailAddressString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressString,
        password: passwordString,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const EmailAlreadyInUseFailure());
      }
      return left(const ServerFailure(message: ''));
    } catch (_) {
      return left(const ServerFailure(message: ''));
    }
  }

  @override
  Future<Either<Failure, Unit>> signInWithEmailAndPassword({
    required EmailAddressVO emailAddress,
    required PasswordVO password,
  }) async {
    final emailAddressString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressString,
        password: passwordString,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return left(const NoUserWithThatEmailFailure());
      } else if (e.code == 'wrong-password') {
        return left(const InvalidEmailAndPasswordCombinationFailure());
      }
      return left(const ServerFailure(message: ''));
    } catch (e) {
      return left(const ServerFailure(message: ''));
    }
  }

  @override
  Future<Either<Failure, Unit>> signInWithGoogle() async {
    try {
      final googleUserOrNull = await _googleSignIn.signIn();
      if (googleUserOrNull == null) {
        return left(const CancelledByUserFailure());
      }
      final auth = await googleUserOrNull.authentication;
      final googleProvide = GoogleAuthProvider.credential(
        idToken: auth.idToken,
        accessToken: auth.accessToken,
      );
      await _firebaseAuth.signInWithCredential(googleProvide);
      return right(unit);
    } catch (_) {
      return left(
        const ServerFailure(
          message: 'Something went wrong in you login. Please try again later',
        ),
      );
    }
  }

  @override
  Future<void> signOut() => Future.wait(
        [
          _googleSignIn.signOut(),
          _firebaseAuth.signOut(),
        ],
      );
}
