import 'package:equatable/equatable.dart';

class OnboardingState with EquatableMixin {
  const OnboardingState({
    required this.currentPage,
  });

  final int currentPage;

  factory OnboardingState.empty(){
    return OnboardingState(currentPage: 0);
  }

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
