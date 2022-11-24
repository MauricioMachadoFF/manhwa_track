part of 'authentication_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login() = _Login;
  const factory AuthEvent.logout() = _Logout;
}
