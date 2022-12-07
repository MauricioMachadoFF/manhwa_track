import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manhwa_track/authentication/sign_in_up_page.dart';
import 'package:manhwa_track/manha_tracks/presentation/bloc/validate_track_bloc.dart';
import 'package:manhwa_track/manha_tracks/presentation/home_page.dart';
import 'package:manhwa_track/manha_tracks/presentation/track_details_page.dart';
import 'package:manhwa_track/splash/splash_page.dart';

final Map<String, Widget Function(BuildContext)> manhwaRoutes = {
  ManhwaRoutes.splash: (_) => const SplashPage(),
  ManhwaRoutes.signIn: (_) => const SignInUpPage(),
  ManhwaRoutes.homepage: (_) => const HomePage(),
  // ManhwaRoutes.trackDetails: (context) => const TrackDetailsPage(),
  ManhwaRoutes.trackDetails: (_) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ValidateTrackBloc>(
          create: (_) => ValidateTrackBloc(),
        ),
      ],
      child: const TrackDetailsPage(),
    );
  },
  //   final args = ModalRoute.of(context)?.settings.arguments;
  //   if (args == null) {
  //     const message = 'Called second route without proper params';
  //     Logger().logError(where: 'ManhwaRoutes', message: message);

  //     throw const MissingParamsException(message);
  //   }
  //   if (args is String) {
  //     return HomePage(text: args);
  //   }
  //   throw const InvalidParamsException();
  // },
};

class ManhwaRoutes {
  static const String splash = '/';
  static const String signIn = '/sign_in_page';
  static const String homepage = '/homepage';
  static const String trackDetails = '/track_details';
}
