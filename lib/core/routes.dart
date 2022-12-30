import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manhwa_track/authentication/sign_in_up_page.dart';
import 'package:manhwa_track/core/exception.dart';
import 'package:manhwa_track/core/injection.dart';
import 'package:manhwa_track/core/logger.dart';
import 'package:manhwa_track/manha_tracks/domain/entities/track.dart';
import 'package:manhwa_track/manha_tracks/presentation/bloc/create_track/create_track_cubit.dart';
import 'package:manhwa_track/manha_tracks/presentation/bloc/validate_track/validate_track_bloc.dart';
import 'package:manhwa_track/manha_tracks/presentation/home_page.dart';
import 'package:manhwa_track/manha_tracks/presentation/pages/track_details_page.dart';
import 'package:manhwa_track/manha_tracks/presentation/pages/webview_page.dart';
import 'package:manhwa_track/settings/settings_page.dart';
import 'package:manhwa_track/splash/splash_page.dart';

final Map<String, Widget Function(BuildContext)> manhwaRoutes = {
  ManhwaRoutes.splash: (_) => const SplashPage(),
  ManhwaRoutes.signIn: (_) => const SignInUpPage(),
  ManhwaRoutes.homepage: (_) => const HomePage(),
  ManhwaRoutes.trackDetails: (context) {
    final args = ModalRoute.of(context)?.settings.arguments;
    if (args != null && args is! Track) {
      const message = 'Called track details page with wrong params';
      Logger().logError(
        where: '(ManhwaRoutes): Navigation to track details page',
        message: message,
      );
      throw const InvalidParamsException();
    }
    return MultiBlocProvider(
      providers: [
        BlocProvider<ValidateTrackBloc>(
          create: (_) => ValidateTrackBloc(),
        ),
        BlocProvider(
          create: (_) => CreateTrackCubit(
            getIt.get(),
            getIt.get(),
          ),
        ),
      ],
      child: args != null
          ? TrackDetailsPage(track: args as Track)
          : const TrackDetailsPage(),
    );
  },
  ManhwaRoutes.settings: (_) => const SettingsPage(),
  ManhwaRoutes.manhwaReading: (context) {
    final args = ModalRoute.of(context)?.settings.arguments;
    if (args != null && args is! String) {
      const message = 'Called reading page with invalid param';
      Logger().logError(
        where: '(ManhwaRoutes): Navigation to manhwa reading page',
        message: message,
      );
      throw const InvalidParamsException();
    }
    return ManhwaReadingPage(url: args as String);
  }
};

class ManhwaRoutes {
  static const String splash = '/';
  static const String signIn = '/sign_in_page';
  static const String homepage = '/homepage';
  static const String trackDetails = '/track_details';
  static const String settings = '/settings';
  static const String manhwaReading = '/manhwa_reading';
}
