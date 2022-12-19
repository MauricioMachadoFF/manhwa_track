import 'package:flutter/material.dart';
import 'package:manhwa_track/design_sytem.dart/design_system.dart';

class ManhwaTextButton extends StatelessWidget {
  const ManhwaTextButton._({
    required this.textColor,
    required this.color,
    required this.title,
    required this.onTap,
  });
  final Color textColor;
  final Color color;
  final String title;
  final VoidCallback onTap;

  factory ManhwaTextButton.onOceanBlue({
    required String title,
    required VoidCallback onTap,
  }) {
    return ManhwaTextButton._(
      textColor: white,
      color: oceanBlueDark,
      title: title,
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(spacingSmall),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(sizeXXL),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: textColor,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
