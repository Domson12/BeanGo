import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final AssetGenImage image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RepaintBoundary(
            child: image.image(
              alignment: Alignment.center,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 32),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
