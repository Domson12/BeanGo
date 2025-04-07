import "package:auto_route/annotations.dart";
import "package:bean_go/core/utils/defaults.dart";
import "package:bean_go/core/utils/extensions.dart";
import "package:bean_go/features/auth/login/widgets/login_form.dart";
import "package:flutter/material.dart";

import "../../../gen/assets.gen.dart";

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: AppDefaults.paddingHorizontal16,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.logo.image(),
            Text(
              context.s.welcome_back,
              style: context.textTheme.displayLarge,
            ),
            AppDefaults.gap16,
            Text(
              context.s.login_to_your_account,
              style: context.textTheme.displaySmall,
            ),
            const SizedBox(height: 100),
            LoginForm(),
          ],
        ),
      ),
    );
  }
}
