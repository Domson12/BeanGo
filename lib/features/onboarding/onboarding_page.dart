import 'package:auto_route/annotations.dart';
import 'package:bean_go/core/utils/extensions.dart';
import 'package:bean_go/core/widgets/bean_go_button.dart';
import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';

@RoutePage()
class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO: move to defaults
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            child: Assets.images.onboarding.image(
              fit: BoxFit.cover,
              width: mediaQuery.size.width,
            ),
          ),
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Padding(
              //TODO: move to defaults
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    context.s.onboarding_desc_big,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  //TODO: move to defaults
                  const SizedBox(height: 8),
                  Text(
                    context.s.onboarding_desc_small,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  //TODO: move to defaults
                  const SizedBox(height: 32),
                  SizedBox(
                    width: double.maxFinite,
                    child: BeanGoButton(
                      text: context.s.get_started,
                      onPressed: () {
                        //TODO: navigate to next page
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
