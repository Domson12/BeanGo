import 'package:auto_route/annotations.dart';
import 'package:bean_go/core/utils/defaults.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/widgets/onboarding_data.dart';
import '../../core/utils/extensions.dart';
import 'widgets/onboarding_bottom_section.dart';
import 'widgets/onboarding_content.dart';
import 'application/onboarding_controller.dart';

@RoutePage()
class OnboardingPage extends ConsumerStatefulWidget {
  const OnboardingPage({super.key});

  @override
  ConsumerState<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends ConsumerState<OnboardingPage> {
  late final PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController()
      ..addListener(
        () {
          final currentPage = _controller.page?.round() ?? 0;
          ref.read(onboardingControllerProvider.notifier).updateCurrentPage(
                currentPage,
              );
        },
      );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void skip() {
    _controller.animateToPage(
      onboardingItems(context).length - 1,
      duration: AppDefaults.shortDuration,
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final items = onboardingItems(context);

    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: TextButton(
                  onPressed: skip,
                  child: Text(
                    context.s.skip,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: 14,
                          color: context.colors.primaryText,
                          fontWeight: FontWeight.w600,
                          height: 1.4,
                        ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: items.length,
              physics: const ClampingScrollPhysics(),
              itemBuilder: (context, index) {
                final data = items[index];
                return Padding(
                  padding: AppDefaults.paddingAll16,
                  child: OnboardingContent(
                    image: data.$1,
                    title: data.$2,
                    subtitle: data.$3,
                  ),
                );
              },
            ),
          ),
          SafeArea(
            top: false,
            minimum: const EdgeInsets.only(bottom: 50),
            child: Padding(
              padding: AppDefaults.paddingAll16,
              child: OnboardingBottomSection(
                controller: _controller,
                count: items.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
