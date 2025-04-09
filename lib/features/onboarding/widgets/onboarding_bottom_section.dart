import 'package:bean_go/core/utils/defaults.dart';
import 'package:bean_go/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:bean_go/features/onboarding/application/onboarding_controller.dart';

class OnboardingBottomSection extends ConsumerStatefulWidget {
  const OnboardingBottomSection({
    super.key,
    required this.controller,
    required this.onPressed,
    required this.count,
  });

  final PageController controller;
  final VoidCallback onPressed;
  final int count;

  @override
  ConsumerState<OnboardingBottomSection> createState() =>
      _OnboardingBottomSectionState();
}

class _OnboardingBottomSectionState
    extends ConsumerState<OnboardingBottomSection> {
  @override
  Widget build(BuildContext context) {
    final currentPage = ref.watch(onboardingControllerProvider).currentPage;
    final isLastPage = currentPage == widget.count - 1;

    return Row(
      children: [
        SmoothPageIndicator(
          controller: widget.controller,
          count: widget.count,
          effect: WormEffect(
            dotHeight: 10,
            dotWidth: 15,
            activeDotColor: Theme.of(context).colorScheme.primary,
          ),
        ),
        const Spacer(),
        SizedBox(
          width: 150,
          height: 50,
          child: AnimatedSwitcher(
            duration: AppDefaults.mediumDuration,
            transitionBuilder: (child, animation) =>
                ScaleTransition(scale: animation, child: child),
            child: isLastPage
                ? FilledButton(
                    key: const ValueKey('get_started'),
                    onPressed: widget.onPressed,
                    child: Text(context.s.get_started),
                  )
                : TextButton(
                    style: TextButton.styleFrom(
                      elevation: 2,
                      minimumSize: const Size(150, 50),
                    ),
                    key: const ValueKey('next'),
                    onPressed: () {
                      widget.controller.nextPage(
                        duration: AppDefaults.mediumDuration,
                        curve: Curves.easeIn,
                      );
                    },
                    child: Text(context.s.next),

                  ),
          ),
        ),
      ],
    );
  }
}
