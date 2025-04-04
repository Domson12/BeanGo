import 'package:flutter/material.dart';
import 'package:bean_go/gen/assets.gen.dart';
import 'package:bean_go/core/utils/extensions.dart';

typedef OnboardingItem = (AssetGenImage image, String title, String subtitle);

List<OnboardingItem> onboardingItems(BuildContext context) => [
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
];
