import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:manhwa_track/authentication/auth.dart';
import 'package:manhwa_track/core/injection.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AuthPage(),
    );
  }
}
