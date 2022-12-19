import 'package:flutter/material.dart';
import 'package:manhwa_track/design_sytem.dart/color.dart';

class BaseBackgroundGradient extends StatelessWidget {
  const BaseBackgroundGradient({
    super.key,
    required this.content,
  });

  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [
            0,
            0.4,
            0.6,
            1,
          ],
          colors: [
            oceanBlueDark,
            oceanBlueLight,
            peach,
            pink,
          ],
        ),
      ),
      child: content,
    );
  }
}
