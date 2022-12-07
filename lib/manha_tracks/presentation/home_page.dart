import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manhwa_track/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:manhwa_track/core/routes.dart';
import 'package:manhwa_track/design_sytem.dart/design_system.dart';
import 'package:manhwa_track/manha_tracks/presentation/widgets/track_card.dart';

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
              Navigator.pushReplacementNamed(context, ManhwaRoutes.signIn),
        );
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: spacingSmall,
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    const TrackCard(),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: double.maxFinite,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text('New Track')),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
