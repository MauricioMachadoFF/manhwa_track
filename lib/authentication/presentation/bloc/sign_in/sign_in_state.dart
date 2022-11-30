part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial() = _Initial;
  const factory SignInState.signedIn() = _SignedIn;
  const factory SignInState.loading() = _Loading;
  const factory SignInState.error({required String errorMessage}) = _Error;
}
