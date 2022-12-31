// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:manhwa_track/authentication/data/repository/authentication_repository_impl.dart'
    as _i10;
import 'package:manhwa_track/authentication/domain/repository/authentication_repository.dart'
    as _i9;
import 'package:manhwa_track/authentication/domain/usecases/get_signed_user.dart'
    as _i15;
import 'package:manhwa_track/authentication/domain/usecases/register_with_email_and_password.dart'
    as _i16;
import 'package:manhwa_track/authentication/domain/usecases/sign_out.dart'
    as _i17;
import 'package:manhwa_track/authentication/domain/usecases/sign_with_email_and_password.dart'
    as _i18;
import 'package:manhwa_track/authentication/domain/usecases/sign_with_google.dart'
    as _i19;
import 'package:manhwa_track/manha_tracks/data/repositories/track_repository_impl.dart'
    as _i7;
import 'package:manhwa_track/manha_tracks/domain/repositories/track_repository.dart'
    as _i6;
import 'package:manhwa_track/manha_tracks/domain/usecases/create_track.dart'
    as _i11;
import 'package:manhwa_track/manha_tracks/domain/usecases/create_user_doc.dart'
    as _i12;
import 'package:manhwa_track/manha_tracks/domain/usecases/delete_track.dart'
    as _i13;
import 'package:manhwa_track/manha_tracks/domain/usecases/get_all_tracks.dart'
    as _i14;
import 'package:manhwa_track/manha_tracks/domain/usecases/update_track.dart'
    as _i8;
import 'package:manhwa_track/shared/module/firebase_injectable_module.dart'
    as _i20;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseInjectionModule = _$FirebaseInjectionModule();
    gh.lazySingleton<_i3.FirebaseAuth>(
        () => firebaseInjectionModule.firebaseAuth);
    gh.lazySingleton<_i4.FirebaseFirestore>(
        () => firebaseInjectionModule.firestore);
    gh.lazySingleton<_i5.GoogleSignIn>(
        () => firebaseInjectionModule.googleSign);
    gh.factory<_i6.TrackRepository>(() => _i7.TrackRepositoryImpl(
          gh<_i3.FirebaseAuth>(),
          gh<_i4.FirebaseFirestore>(),
        ));
    gh.factory<_i8.UpdateTrack>(
        () => _i8.UpdateTrackImpl(gh<_i6.TrackRepository>()));
    gh.lazySingleton<_i9.AuthenticationRepository>(
        () => _i10.AuthenticationRepositoryImpl(
              gh<_i3.FirebaseAuth>(),
              gh<_i5.GoogleSignIn>(),
            ));
    gh.factory<_i11.CreateTrack>(
        () => _i11.CreateTrackImpl(gh<_i6.TrackRepository>()));
    gh.factory<_i12.CreateUserDoc>(
        () => _i12.CreateUserDocImpl(gh<_i6.TrackRepository>()));
    gh.factory<_i13.DeleteTrack>(
        () => _i13.DeleteTrackImpl(gh<_i6.TrackRepository>()));
    gh.factory<_i14.GetAllTrack>(
        () => _i14.GetAllTrackImpl(gh<_i6.TrackRepository>()));
    gh.factory<_i15.GetSignedUser>(() =>
        _i15.GetSignedUserImpl(repository: gh<_i9.AuthenticationRepository>()));
    gh.factory<_i16.RegisterWithEmailAndPassword>(() =>
        _i16.RegisterWithEmailAndPasswordImpl(
            repository: gh<_i9.AuthenticationRepository>()));
    gh.factory<_i17.SignOut>(
        () => _i17.SignOutImpl(repository: gh<_i9.AuthenticationRepository>()));
    gh.factory<_i18.SignWithEmailAndPassword>(() =>
        _i18.SignWithEmailAndPasswordImpl(
            repository: gh<_i9.AuthenticationRepository>()));
    gh.factory<_i19.SignWithGoogle>(() => _i19.SignWithGoogleImpl(
        repository: gh<_i9.AuthenticationRepository>()));
    return this;
  }
}

class _$FirebaseInjectionModule extends _i20.FirebaseInjectionModule {}
