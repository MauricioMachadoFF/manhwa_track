import 'package:flutter/material.dart';
import 'package:manhwa_track/design_sytem.dart/spacing/gaps.dart';
import 'package:manhwa_track/design_sytem.dart/spacing/sizes.dart';

class ManhwaImageIcon extends StatelessWidget {
  const ManhwaImageIcon._({
    required this.imagePath,
    this.size = sizeRegular,
    this.backgroundColor,
  });

  static const _basePath = 'assets/images/';

  final String imagePath;
  final Color? backgroundColor;
  final double size;

  factory ManhwaImageIcon.google({
    double? size,
    Color? backgroundColor,
  }) {
    return ManhwaImageIcon._(
      imagePath: '${_basePath}google_icon.png',
      size: size ?? sizeRegular,
      backgroundColor: backgroundColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(spacingQuarck),
        child: SizedBox(
          width: size,
          height: size,
          child: FittedBox(
            fit: BoxFit.cover,
            child: Image.asset(imagePath),
          ),
        ),
      ),
    );
  }
}
