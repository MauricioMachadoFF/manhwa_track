import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manhwa_track/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:manhwa_track/core/routes.dart';
import 'package:manhwa_track/shared/presentation/base_background_gradient.dart';

import '../design_sytem.dart/design_system.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseBackgroundGradient(
      content: BlocListener<AuthBloc, AuthState>(
        bloc: context.read(),
        listener: (context, state) {
          state.whenOrNull(
            unauthenticated: () =>
                Navigator.of(context).pushNamedAndRemoveUntil(
              ManhwaRoutes.signIn,
              (Route<dynamic> route) => false,
            ),
          );
        },
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: ManhwaIconButton(
              icon: Icons.chevron_left_rounded,
              iconSize: sizeMedium,
              iconColor: Colors.black87,
              onTap: Navigator.of(context).pop,
            ),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: spacingSmall,
              ),
              child: Column(
                children: [
                  const SizedBox(height: spacingSmall),
                  _Tile(
                    icon: Icons.logout_rounded,
                    title: 'Logout',
                    onTap: () => context.read<AuthBloc>().add(
                          const AuthEvent.signOut(),
                        ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Tile extends StatelessWidget {
  const _Tile({
    required this.icon,
    required this.title,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: spacingNano),
          Expanded(
            child: Text(title),
          ),
          const Icon(Icons.chevron_right_rounded)
        ],
      ),
    );
  }
}
