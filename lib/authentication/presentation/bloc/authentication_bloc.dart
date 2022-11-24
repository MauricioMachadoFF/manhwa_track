import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'authentication_state.dart';
part 'authentication_event.dart';
part 'authentication_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  static final FirebaseAuth _auth = FirebaseAuth.instance;
  static final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: ['email'],
  );

  AuthBloc() : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.when(
        login: () async {
          try {
            final googleUser = await _googleSignIn.signIn();
            if (googleUser != null) {
              emit(const AuthState.loading());
              final googleAuth = await googleUser.authentication;
              final AuthCredential credential = GoogleAuthProvider.credential(
                idToken: googleAuth.idToken,
                accessToken: googleAuth.accessToken,
              );
              await _auth.signInWithCredential(credential);
              print(_auth.currentUser);
              emit(AuthState.loggedIn(_auth.currentUser!));
            }
          } catch (e) {
            print(e);
            emit(const AuthState.initial());
          }
        },
        logout: () async {
          try {
            emit(const AuthState.loading());
            await _googleSignIn.signOut();
            await _auth.signOut();
            emit(const AuthState.initial());
          } catch (e) {
            print(e);
            emit(const AuthState.initial());
          }
        },
      );
    });
  }
}
