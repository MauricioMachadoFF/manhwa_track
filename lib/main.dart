import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manhwa_track/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:manhwa_track/core/injection.dart';
import 'package:manhwa_track/core/routes.dart';
import 'package:manhwa_track/generated/l10n.dart';
import 'package:manhwa_track/manha_tracks/presentation/bloc/delete_track/delete_track_cubit.dart';
import 'package:manhwa_track/manha_tracks/presentation/bloc/load_tracks/load_track_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependecies();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(
            signOut: getIt.get(),
            getSignedUser: getIt.get(),
          )..add(const AuthEvent.authCheckRequest()),
        ),
        BlocProvider<LoadTrackCubit>(
          create: (context) => LoadTrackCubit(
            getAllTrack: getIt.get(),
            createUserDoc: getIt.get(),
          ),
        ),
        BlocProvider<DeleteTrackCubit>(
          create: (context) => DeleteTrackCubit(
            deleteTrack: getIt.get(),
          ),
        ),
      ],
      child: BlocBuilder<AuthBloc, AuthState>(
        //TODO(Mauricio): Initialize l10n properly
        builder: (context, state) => MaterialApp(
          debugShowCheckedModeBanner: true,
          supportedLocales: S.delegate.supportedLocales,
          localizationsDelegates: const [
            S.delegate,
          ],
          title: S.current.manhwa_track,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: ManhwaRoutes.splash,
          routes: manhwaRoutes,
        ),
      ),
    );
  }
}
