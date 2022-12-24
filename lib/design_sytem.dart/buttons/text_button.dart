import 'package:flutter/material.dart';
import 'package:manhwa_track/design_sytem.dart/design_system.dart';

class ManhwaTextButton extends StatelessWidget {
  const ManhwaTextButton._({
    required this.textColor,
    required this.color,
    required this.title,
    required this.onTap,
    this.leading,
  });

  final Color textColor;
  final Color color;
  final String title;
  final VoidCallback onTap;
  final Widget? leading;

  factory ManhwaTextButton.onOceanBlue({
    required String title,
    required VoidCallback onTap,
    Widget? leading,
  }) {
    return ManhwaTextButton._(
      textColor: white,
      color: oceanBlueDark,
      title: title,
      onTap: onTap,
      leading: leading,
    );
  }

  bool get _hasLeading => leading != null;

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_hasLeading) ...[
              leading ?? const SizedBox.shrink(),
              const SizedBox(width: spacingNano),
            ],
            Text(
              title,
              style: TextStyle(
                color: textColor,
              ),
              textAlign: _hasLeading ? TextAlign.start : TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
