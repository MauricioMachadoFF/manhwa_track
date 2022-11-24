import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({
    required this.auth,
    super.key,
  });

  final FirebaseAuth auth;

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: ['email'],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.auth.currentUser != null
            ? const Text('Sign In')
            : const Text('Sign Out'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async => _signIn(),
              child: const Text('Sign In'),
            ),
            ElevatedButton(
              onPressed: () async => _signOut(),
              child: const Text('Sign Out'),
            ),
            ElevatedButton(
              onPressed: () async => _getUserInformation(),
              child: const Text('Get User Information'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _signIn() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser != null) {
        final googleAuth = await googleUser.authentication;
        final AuthCredential credential = GoogleAuthProvider.credential(
          idToken: googleAuth.idToken,
          accessToken: googleAuth.accessToken,
        );
        await widget.auth.signInWithCredential(credential);
        setState(() {});
      }
      return;
    } catch (e) {
      print(e);
    }
  }

  Future<void> _signOut() async {
    try {
      await _googleSignIn.signOut();
      await widget.auth.signOut();
      setState(() {});
    } catch (e) {
      print(e);
    }
  }

  void _getUserInformation() {
    final user = widget.auth.currentUser;
    if (user != null) {
      print(user);
      return;
    }
    print('Sem usuário logado');
    return;
  }
}
