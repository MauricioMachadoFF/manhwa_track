import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manhwa_track/authentication/domain/failures/authentication_failures.dart';
import 'package:manhwa_track/authentication/domain/usecases/register_with_email_and_password.dart';
import 'package:manhwa_track/authentication/domain/usecases/sign_with_email_and_password.dart';
import 'package:manhwa_track/authentication/domain/usecases/sign_with_google.dart';
import 'package:manhwa_track/authentication/domain/value_objects/email_address/email_address_vo.dart';
import 'package:manhwa_track/authentication/domain/value_objects/password/password_vo.dart';

part 'sign_in_state.dart';
part 'sign_in_event.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final RegisterWithEmailAndPassword _registerWithEmailAndPassword;
  final SignWithEmailAndPassword _signWithEmailAndPassword;
  final SignWithGoogle _signWithGoogle;
  SignInBloc({
    required RegisterWithEmailAndPassword registerWithEmailAndPassword,
    required SignWithEmailAndPassword signInWithEmailAndPassword,
    required SignWithGoogle signWithGoogle,
  })  : _registerWithEmailAndPassword = registerWithEmailAndPassword,
        _signWithEmailAndPassword = signInWithEmailAndPassword,
        _signWithGoogle = signWithGoogle,
        super(const SignInState.initial()) {
    on<SignInEvent>(
      (event, emit) async {
        await event.when(
          registerWithEmailAndPassword: (emailAddress, password) async {
            emit(const SignInState.initial());
            if (emailAddress.isValid() && password.isValid()) {
              emit(const SignInState.loading());
              final signedInOrFailure = await _registerWithEmailAndPassword(
                emailAddress: emailAddress,
                password: password,
              );
              emit(
                signedInOrFailure.fold(
                  (failure) {
                    if (failure is EmailAlreadyInUseFailure) {
                      return SignInState.error(errorMessage: failure.message);
                    } else {
                      return _generalErroState();
                    }
                  },
                  (_) => const SignInState.signedIn(),
                ),
              );
            }
            emit(_emptyErroState());
          },
          signInWithEmailAndPassword: (emailAddress, password) async {
            emit(const SignInState.initial());
            if (emailAddress.isValid() && password.isValid()) {
              emit(const SignInState.loading());
              final signedInOrFailure = await _signWithEmailAndPassword(
                emailAddress: emailAddress,
                password: password,
              );
              emit(
                signedInOrFailure.fold(
                  (failure) {
                    if (failure is InvalidEmailAndPasswordCombinationFailure ||
                        failure is NoUserWithThatEmailFailure) {
                      return SignInState.error(errorMessage: failure.message);
                    } else {
                      return _generalErroState();
                    }
                  },
                  (_) => const SignInState.signedIn(),
                ),
              );
            }
            emit(_emptyErroState());
          },
          signInWithGoogle: () async {
            emit(const SignInState.loading());
            final signedInOrFailure = await _signWithGoogle();
            emit(
              signedInOrFailure.fold(
                (failure) {
                  if (failure is CancelledByUserFailure) {
                    return SignInState.error(errorMessage: failure.message);
                  }
                  return _emptyErroState();
                },
                (_) => const SignInState.signedIn(),
              ),
            );
          },
        );
      },
    );
  }

  SignInState _generalErroState() {
    return const SignInState.error(
      errorMessage: 'Something went wrong during login',
    );
  }

  SignInState _emptyErroState() {
    return const SignInState.error(
      errorMessage: '',
    );
  }
}
