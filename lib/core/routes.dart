import 'package:flutter/material.dart';
import 'package:manhwa_track/authentication/sign_in_up_page.dart';
import 'package:manhwa_track/manha_tracks/home_page.dart';
import 'package:manhwa_track/splash/splash_page.dart';

final Map<String, Widget Function(BuildContext)> manhwaRoutes = {
  ManhwaRoutes.splashPage: (_) => const SplashPage(),
  ManhwaRoutes.signInPage: (_) => const SignInUpPage(),
  ManhwaRoutes.second: (_) => const HomePage(),
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
  static const String splashPage = '/';
  static const String signInPage = '/sign_in_page';
  static const String second = '/second';
}
