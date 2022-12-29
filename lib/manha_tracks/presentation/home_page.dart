import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manhwa_track/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:manhwa_track/core/routes.dart';
import 'package:manhwa_track/design_sytem.dart/buttons/text_button.dart';
import 'package:manhwa_track/design_sytem.dart/design_system.dart';
import 'package:manhwa_track/manha_tracks/presentation/bloc/delete_track/delete_track_cubit.dart';
import 'package:manhwa_track/manha_tracks/presentation/bloc/load_tracks/load_track_cubit.dart';
import 'package:manhwa_track/manha_tracks/presentation/pages/error_page.dart';
import 'package:manhwa_track/manha_tracks/presentation/pages/loading_page.dart';
import 'package:manhwa_track/manha_tracks/presentation/widgets/track_card.dart';
import 'package:manhwa_track/shared/presentation/base_background_gradient.dart';

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
        BlocListener<DeleteTrackCubit, DeleteTrackState>(
          listener: (context, state) => state.whenOrNull(
            error: (errorMessage) {
              if (errorMessage.isNotEmpty) {
                final snackBar = SnackBar(
                  content: Text(errorMessage),
                  duration: const Duration(milliseconds: 1500),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
              return null;
            },
            sucess: () => context.read<LoadTrackCubit>().loadTracks(),
          ),
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
                  "Ops! Somethign went wrong and we couldn't fetch your manhwa tracks.",
            ),
            loading: () => const LoadingPage(label: 'Fetching your tracks'),
            loaded: (tracks) => BlocBuilder<DeleteTrackCubit, DeleteTrackState>(
              builder: (context, state) {
                return BaseBackgroundGradient(
                  content: Scaffold(
                    appBar: AppBar(
                      elevation: 0,
                      automaticallyImplyLeading: false,
                      backgroundColor: Colors.transparent,
                      actions: [
                        GestureDetector(
                          onTap: () => Navigator.of(context).pushNamed(
                            ManhwaRoutes.settings,
                          ),
                          child: Container(
                            margin: const EdgeInsets.only(
                              right: spacingSmall,
                            ),
                            padding: const EdgeInsets.all(spacingQuarck),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: pink,
                            ),
                            child: const Icon(
                              Icons.settings,
                              color: white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    backgroundColor: Colors.transparent,
                    body: SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: spacingSmall,
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: spacingSmall),
                            Expanded(
                              child: ListView.separated(
                                physics: const AlwaysScrollableScrollPhysics(),
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemBuilder: (_, index) => TrackCard(
                                  track: tracks[index],
                                ),
                                separatorBuilder: (_, index) =>
                                    const SizedBox(height: spacingSmall),
                                itemCount: tracks.length,
                              ),
                            ),
                            const SizedBox(height: spacingSmall),
                            ManhwaTextButton.onOceanBlue(
                              title: 'New Track',
                              onTap: () => Navigator.of(context)
                                  .pushNamed(ManhwaRoutes.trackDetails),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
