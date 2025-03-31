import 'package:bean_go/features/onboarding/application/onboarding_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'onboarding_controller.g.dart';

@riverpod
class OnboardingController extends _$OnboardingController {
  @override
  OnboardingState build() {
    return OnboardingState.empty();
  }
}
