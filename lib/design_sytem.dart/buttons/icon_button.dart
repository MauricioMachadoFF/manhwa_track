import 'package:flutter/material.dart';
import 'package:manhwa_track/design_sytem.dart/design_system.dart';

class ManhwaIconButton extends StatelessWidget {
  final Color? backgroundColor;
  final IconData icon;
  final Color iconColor;
  final double iconSize;
  final void Function() onTap;
  const ManhwaIconButton({
    this.backgroundColor,
    required this.icon,
    //TODO(Mauricio): Set Proper default color
    this.iconColor = Colors.white,
    this.iconSize = sizeRegular,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(spacingNano),
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: iconColor,
          size: iconSize,
        ),
      ),
    );
  }
}
