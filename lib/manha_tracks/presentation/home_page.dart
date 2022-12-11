import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manhwa_track/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:manhwa_track/core/routes.dart';
import 'package:manhwa_track/design_sytem.dart/design_system.dart';
import 'package:manhwa_track/manha_tracks/presentation/bloc/load_tracks/load_track_cubit.dart';
import 'package:manhwa_track/manha_tracks/presentation/pages/error_page.dart';
import 'package:manhwa_track/manha_tracks/presentation/pages/loading_page.dart';
import 'package:manhwa_track/manha_tracks/presentation/widgets/track_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<LoadTrackCubit>().loadTracksOnSignIn();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.whenOrNull(
              unauthenticated: () =>
                  Navigator.pushReplacementNamed(context, ManhwaRoutes.signIn),
            );
          },
        ),
      ],
      child: BlocBuilder<LoadTrackCubit, LoadTrackState>(
        builder: (context, state) {
          return state.when(
            error: () => ErrorPage(
                onTap: () {
                  context.read<LoadTrackCubit>().loadTracks();
                },
                label: 'Try again',
                description:
                    "Ops! Somethign went wrong and we couldn't fetch your manhwa tracks."),
            loading: () => const LoadingPage(label: 'Fetching your tracks'),
            loaded: (tracks) => Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: () async {
                  context.read<LoadTrackCubit>().loadTracks();
                },
              ),
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: spacingSmall,
                  ),
                  child: Stack(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            ListView.separated(
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (_, index) => TrackCard(
                                track: tracks[index],
                              ),
                              separatorBuilder: (_, index) =>
                                  const SizedBox(height: spacingSmall),
                              itemCount: tracks.length,
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          width: double.maxFinite,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(ManhwaRoutes.trackDetails);
                            },
                            child: Text('New Track'),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
