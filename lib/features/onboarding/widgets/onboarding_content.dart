import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bean_go/core/utils/defaults.dart';
import 'package:bean_go/core/utils/extensions.dart';
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.center,
          child: RepaintBoundary(
            child: image.image(
              alignment: Alignment.center,
              fit: BoxFit.contain,
              width: 300,
              height: 300,
            ),
          ),
        ),
        AppDefaults.gap24,
        AnimatedTextKit(
          isRepeatingAnimation: false,
          animatedTexts: [
            TypewriterAnimatedText(
              title,
              textStyle: Theme.of(context).textTheme.displayMedium,
              speed: AppDefaults.shortestDuration,
            ),
          ],
        ),
       AppDefaults.gap8,
        AnimatedTextKit(
          isRepeatingAnimation: false,
          animatedTexts: [
            ColorizeAnimatedText(
              subtitle,
              textStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 14,
                  ),
              speed: AppDefaults.shortestDuration,
              colors: [
                context.colors.primaryText,
                context.colors.secondaryText,
                context.colors.primaryBase,
              ],
            ),
          ],
        ),
      ],
    );
  }
}
