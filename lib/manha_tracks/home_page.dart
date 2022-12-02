import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manhwa_track/core/routes.dart';

import '../authentication/presentation/bloc/auth/auth_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          unauthenticated: () =>
              Navigator.pushReplacementNamed(context, ManhwaRoutes.signInPage),
        );
      },
      child: const Scaffold(
        body: Center(
          child: Text('Banana'),
        ),
      ),
    );
  }
}
