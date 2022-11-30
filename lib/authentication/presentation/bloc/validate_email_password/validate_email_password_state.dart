part of 'validate_email_password_cubit.dart';

@freezed
class ValidateEmailPasswordState with _$ValidateEmailPasswordState {
  const factory ValidateEmailPasswordState({
    required String? emailErrorText,
    required String? passwordErrorText,
  }) = _ValidateEmailPasswordState;

  factory ValidateEmailPasswordState.initial() =>
      const ValidateEmailPasswordState(
        emailErrorText: null,
        passwordErrorText: null,
      );
}
