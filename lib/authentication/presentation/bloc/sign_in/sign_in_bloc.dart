import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manhwa_track/authentication/domain/auth_facade_interface.dart';
import 'package:manhwa_track/authentication/domain/auth_failures.dart';
import 'package:manhwa_track/authentication/domain/value_objects/email_address/email_address_vo.dart';
import 'package:manhwa_track/authentication/domain/value_objects/password/password_vo.dart';

part 'sign_in_state.dart';
part 'sign_in_event.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final AuthFacadeInterface _authFacade;
  SignInBloc(
    this._authFacade,
  ) : super(const SignInState.initial()) {
    on<SignInEvent>((event, emit) async {
      await event.when(
        registerWithEmailAndPassword: (emailAddress, password) async {
          emit(const SignInState.initial());
          if (emailAddress.isValid() && password.isValid()) {
            emit(const SignInState.loading());
            final signedInOrFailure =
                await _authFacade.registerWithEmailAndPassword(
                    emailAddress: emailAddress, password: password);
            signedInOrFailure.fold(
              (_) => const SignInState.error(
                errorMessage: 'Request to register failed',
              ),
              (_) => const SignInState.signedIn(),
            );
          }
          emit(const SignInState.error(errorMessage: ''));
        },
        signInWithEmailAndPassword: (emailAddress, password) async {
          emit(const SignInState.initial());
          if (emailAddress.isValid() && password.isValid()) {
            emit(const SignInState.loading());
            final signedInOrFailure =
                await _authFacade.signInWithEmailAndPassword(
              emailAddress: emailAddress,
              password: password,
            );
            signedInOrFailure.fold(
              (_) => const SignInState.error(
                errorMessage: 'Request to register failed',
              ),
              (_) => const SignInState.signedIn(),
            );
          }
          emit(const SignInState.error(errorMessage: ''));
        },
        signInWithGoogle: () async {
          final signedInOrFailure = await _authFacade.signInWithGoogle();
          signedInOrFailure.fold(
            (failure) {
              if (failure is CancelledByUserFailure) {
                emit(SignInState.error(errorMessage: failure.message));
                return;
              }
              emit(const SignInState.error(errorMessage: ''));
              return;
            },
            (_) => const SignInState.signedIn(),
          );
        },
      );
    });
  }
}
