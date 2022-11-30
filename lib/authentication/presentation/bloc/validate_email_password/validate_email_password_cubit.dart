import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manhwa_track/authentication/domain/value_objects/email_address/email_address_vo.dart';
import 'package:manhwa_track/authentication/domain/value_objects/password/password_vo.dart';

part 'validate_email_password_cubit.freezed.dart';
part 'validate_email_password_state.dart';

class ValidateEmailPasswordCubit extends Cubit<ValidateEmailPasswordState> {
  ValidateEmailPasswordCubit() : super(ValidateEmailPasswordState.initial());

  void validateEmail(String email) {
    EmailAddressVO(email).value.fold(
      (failure) {
        emit(state.copyWith(emailErrorText: failure.message));
      },
      (_) {
        emit(state.copyWith(emailErrorText: null));
      },
    );
  }

  void validatePassword(String password) {
    PasswordVO(password).value.fold(
      (failure) {
        emit(state.copyWith(passwordErrorText: failure.message));
      },
      (_) {
        emit(state.copyWith(passwordErrorText: null));
      },
    );
  }

  void validateForm(String email, String password) {
    validateEmail(email);
    validatePassword(password);
  }
}
