import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manhwa_track/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:manhwa_track/core/injection.dart';
import 'package:manhwa_track/core/routes.dart';

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
    return BlocProvider(
      create: (context) =>
          AuthBloc(getIt.get())..add(const AuthEvent.authCheckRequest()),
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) => MaterialApp(
          debugShowCheckedModeBanner: true,
          title: 'Manhwa Track',
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
