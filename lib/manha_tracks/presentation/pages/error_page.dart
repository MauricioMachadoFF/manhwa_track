import 'package:flutter/material.dart';
import 'package:manhwa_track/design_sytem.dart/spacing/gaps.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({
    required this.onTap,
    required this.label,
    required this.description,
    super.key,
  });

  final VoidCallback onTap;
  final String label;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: spacingSmall,
        ),
        child: Column(
          children: [
            const Spacer(),
            Text(
              description,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: onTap,
                child: Text(
                  label,
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
