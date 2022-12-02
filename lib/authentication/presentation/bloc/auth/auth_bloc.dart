import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manhwa_track/authentication/domain/auth_facade_interface.dart';
import 'package:manhwa_track/shared/domain/entities/user.dart';

part 'auth_state.dart';
part 'auth_event.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthFacadeInterface _authFacadeInterface;

  AuthBloc(this._authFacadeInterface) : super(const AuthState.initial()) {
    on<AuthEvent>(
      (event, emit) async {
        await event.when(
          signOut: () async {
            await _authFacadeInterface.signOut();
            emit(const AuthState.unauthenticated());
          },
          authCheckRequest: () async {
            final userOption = await _authFacadeInterface.getSignedUser();
            emit(
              userOption.fold(
                () => const AuthState.unauthenticated(),
                AuthState.authenticated,
              ),
            );
          },
        );
      },
    );
  }
}
