import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manhwa_track/authentication/presentation/bloc/authentication_bloc.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({
    super.key,
  });

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  // final GoogleSignIn _googleSignIn = GoogleSignIn(
  //   scopes: ['email'],
  // );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthBloc(),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.whenOrNull(
            loggedIn: (user) {
              print('Logou Carai');
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                state.when(
                  initial: () => 'You arent signed',
                  loggedIn: (user) => 'Hello ${user.displayName}',
                  loading: () => 'Signing you in',
                ),
              ),
            ),
            body: Center(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () async => context.read<AuthBloc>().add(
                          const AuthEvent.login(),
                        ),
                    child: const Text('Sign In'),
                  ),
                  ElevatedButton(
                    onPressed: () async => context.read<AuthBloc>().add(
                          const AuthEvent.logout(),
                        ),
                    child: const Text('Sign Out'),
                  ),
                  ElevatedButton(
                    onPressed: state.maybeWhen(
                      loggedIn: (user) {
                        print(user);
                      },
                      orElse: () {
                        return null;
                      },
                    ),
                    child: const Text('Get User Information'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
