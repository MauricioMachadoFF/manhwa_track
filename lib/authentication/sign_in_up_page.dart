import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manhwa_track/authentication/domain/value_objects/email_address/email_address_vo.dart';
import 'package:manhwa_track/authentication/domain/value_objects/password/password_vo.dart';
import 'package:manhwa_track/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:manhwa_track/authentication/presentation/bloc/sign_in/sign_in_bloc.dart';
import 'package:manhwa_track/authentication/presentation/bloc/validate_email_password/validate_email_password_cubit.dart';
import 'package:manhwa_track/core/injection.dart';
import 'package:manhwa_track/core/routes.dart';
import 'package:manhwa_track/design_sytem.dart/buttons/text_button.dart';
import 'package:manhwa_track/design_sytem.dart/design_system.dart';
import 'package:manhwa_track/generated/l10n.dart';
import 'package:manhwa_track/shared/presentation/base_background_gradient.dart';

class SignInUpPage extends StatefulWidget {
  const SignInUpPage({super.key});

  @override
  State<SignInUpPage> createState() => _SignInUpPageState();
}

class _SignInUpPageState extends State<SignInUpPage> {
  late final ValidateEmailPasswordCubit _validateEmailPasswordCubit;
  late final SignInBloc _signInBloc;
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  String get _email => _emailController.text;
  String get _password => _passwordController.text;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _validateEmailPasswordCubit = ValidateEmailPasswordCubit();
    _signInBloc = SignInBloc(
      registerWithEmailAndPassword: getIt.get(),
      signInWithEmailAndPassword: getIt.get(),
      signWithGoogle: getIt.get(),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _validateEmailPasswordCubit.close();
    _signInBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.whenOrNull(
              authenticated: (user) {
                Navigator.pushReplacementNamed(
                  context,
                  ManhwaRoutes.homepage,
                );
              },
            );
          },
        ),
        BlocListener<SignInBloc, SignInState>(
          bloc: _signInBloc,
          listener: (context, state) {
            state.whenOrNull(
              signedIn: () {
                context
                    .read<AuthBloc>()
                    .add(const AuthEvent.authCheckRequest());
              },
              error: (errorMessage) {
                if (errorMessage.isNotEmpty) {
                  final snackBar = SnackBar(
                    content: Text(errorMessage),
                    duration: const Duration(milliseconds: 1500),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
            );
          },
        )
      ],
      child: BaseBackgroundGradient(
        content: GestureDetector(
          onTap: _dismissKeyboard,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: BlocBuilder<SignInBloc, SignInState>(
              bloc: _signInBloc,
              builder: (context, state) {
                return SingleChildScrollView(
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: spacingSmall,
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: spacingBig),
                          ShaderMask(
                            blendMode: BlendMode.srcATop,
                            shaderCallback: (bounds) => const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: [
                                0,
                                0.5,
                                1,
                              ],
                              colors: [
                                pink,
                                peach,
                                pink,
                              ],
                            ).createShader(bounds),
                            child: const Icon(
                              Icons.menu_book_rounded,
                              size: sizeBig,
                              color: pink,
                            ),
                          ),
                          const SizedBox(height: spacingSmall),
                          BlocBuilder<ValidateEmailPasswordCubit,
                              ValidateEmailPasswordState>(
                            bloc: _validateEmailPasswordCubit,
                            builder: (context, state) {
                              return DSTextField(
                                controller: _emailController,
                                label: S.current.sign_page_email_field_label,
                                onEditingComplete: () =>
                                    _validateEmailPasswordCubit
                                        .validateEmail(_email),
                                errorMessage: state.emailErrorText,
                              );
                            },
                          ),
                          const SizedBox(height: spacingSmall),
                          BlocBuilder<ValidateEmailPasswordCubit,
                              ValidateEmailPasswordState>(
                            bloc: _validateEmailPasswordCubit,
                            builder: (context, state) {
                              return DSTextField(
                                controller: _passwordController,
                                label: S.current.sign_page_password_field_label,
                                hideValue: true,
                                onEditingComplete: () =>
                                    _validateEmailPasswordCubit
                                        .validatePassword(_password),
                                errorMessage: state.passwordErrorText,
                              );
                            },
                          ),
                          const SizedBox(height: spacingSmall),
                          Row(
                            children: [
                              Expanded(
                                child: ManhwaTextButton.onOceanBlue(
                                  title: S.current.sign_in_button_label,
                                  onTap: () => _signIn(_email, _password),
                                ),
                              ),
                              const SizedBox(
                                width: spacingNano,
                              ),
                              Expanded(
                                child: ManhwaTextButton.onOceanBlue(
                                  title: S.current.sign_up_button_label,
                                  onTap: () => _signUp(_email, _password),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: spacingSmall),
                          ManhwaTextButton.onOceanBlue(
                            title: S.current.sign_in_with_google,
                            onTap: _signInWithGoogle,
                            leading: ManhwaImageIcon.google(
                              backgroundColor: white,
                            ),
                          ),
                          const SizedBox(height: spacingSmall),
                          state.maybeWhen(
                            orElse: () => const SizedBox.shrink(),
                            loading: () => const CircularProgressIndicator(),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void _dismissKeyboard() {
    final currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
    return;
  }

  void _validateForm(String email, String password) {
    _validateEmailPasswordCubit.validateForm(
      _emailController.text,
      _passwordController.text,
    );
  }

  void _signInWithGoogle() {
    _signInBloc.add(const SignInEvent.signInWithGoogle());
  }

  void _signIn(String email, String password) {
    _validateForm(email, password);
    _signInBloc.add(
      SignInEvent.signInWithEmailAndPassword(
        emailAddress: EmailAddressVO(email),
        password: PasswordVO(password),
      ),
    );
  }

  void _signUp(String email, String password) {
    _validateForm(email, password);
    _signInBloc.add(
      SignInEvent.registerWithEmailAndPassword(
        emailAddress: EmailAddressVO(email),
        password: PasswordVO(password),
      ),
    );
  }
}
