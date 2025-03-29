import 'package:auto_route/annotations.dart';
import 'package:bean_go/core/utils/extensions.dart';
import 'package:bean_go/features/onboarding/widgets/onboarding_content.dart';
import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';

@RoutePage()
class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          PageView.builder(
            itemCount: 3,
            physics: const ClampingScrollPhysics(),
            itemBuilder: (context, index) {
              final data = [
                (
                  Assets.images.onboarding,
                  context.s.onboarding_title1,
                  context.s.onboarding_subtitle1
                ),
                (
                  Assets.images.onboarding2,
                  context.s.onboarding_title2,
                  context.s.onboarding_subtitle2
                ),
                (
                  Assets.images.onboarding3,
                  context.s.onboarding_title3,
                  context.s.onboarding_subtitle3
                ),
              ][index];

              return OnboardingContent(
                image: data.$1,
                title: data.$2,
                subtitle: data.$3,
              );
            },
          )
        ],
      ),
    );
  }
}
