class OnboardingState {
  final int currentPage;

  OnboardingState({required this.currentPage});

  factory OnboardingState.empty() => OnboardingState(currentPage: 0);

  OnboardingState copyWith({int? currentPage}) {
    return OnboardingState(
      currentPage: currentPage ?? this.currentPage,
    );
  }
}
