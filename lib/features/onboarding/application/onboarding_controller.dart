import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'onboarding_state.dart';

part 'onboarding_controller.g.dart';

@riverpod
class OnboardingController extends _$OnboardingController {
  @override
  OnboardingState build() => OnboardingState.empty();

  void updateCurrentPage(int page) {
    if (state.currentPage != page) {
      state = state.copyWith(currentPage: page);
    }
  }
}
