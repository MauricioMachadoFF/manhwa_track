import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manhwa_track/authentication/domain/usecases/get_signed_user.dart';
import 'package:manhwa_track/authentication/domain/usecases/sign_out.dart';
import 'package:manhwa_track/shared/domain/entities/user.dart';

part 'auth_state.dart';
part 'auth_event.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SignOut _signOut;
  final GetSignedUser _getSignedUser;
  AuthBloc({
    required SignOut signOut,
    required GetSignedUser getSignedUser,
  })  : _signOut = signOut,
        _getSignedUser = getSignedUser,
        super(const AuthState.initial()) {
    on<AuthEvent>(
      (event, emit) async {
        await event.when(
          signOut: () async {
            await _signOut();
            emit(const AuthState.unauthenticated());
          },
          authCheckRequest: () async {
            final userOption = await _getSignedUser();
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
