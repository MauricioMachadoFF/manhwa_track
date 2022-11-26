part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.registerWithEmailAndPassword({
    required EmailAddressVO emailAddress,
    required PasswordVO password,
  }) = _RegisterWithEmailAndPassword;
  const factory SignInEvent.signInWithEmailAndPassword({
    required EmailAddressVO emailAddress,
    required PasswordVO password,
  }) = _SignInWithEmailAndPassword;
  const factory SignInEvent.signInWithGoogle() = _SignInWithGoogle;
}
