import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manhwa_track/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:manhwa_track/core/routes.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          authenticated: (user) {
            Navigator.pushReplacementNamed(context, ManhwaRoutes.homepage);
          },
          unauthenticated: () =>
              Navigator.pushReplacementNamed(context, ManhwaRoutes.signIn),
        );
      },
      child: const Scaffold(
        backgroundColor: Colors.black87,
        body: Center(
          child: CircularProgressIndicator(
            color: Colors.white54,
          ),
        ),
      ),
    );
  }
}
