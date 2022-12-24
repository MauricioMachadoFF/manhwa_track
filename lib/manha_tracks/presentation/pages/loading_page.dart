import 'package:flutter/material.dart';
import 'package:manhwa_track/design_sytem.dart/spacing/gaps.dart';
import 'package:manhwa_track/design_sytem.dart/spacing/sizes.dart';
import 'package:manhwa_track/shared/presentation/base_background_gradient.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({
    this.label = '',
    super.key,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return BaseBackgroundGradient(
      content: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: sizeBig,
                width: sizeBig,
                child: CircularProgressIndicator(strokeWidth: sizeNano),
              ),
              const SizedBox(height: spacingSmall),
              Text(label),
            ],
          ),
        ),
      ),
    );
  }
}
