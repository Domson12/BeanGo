import 'package:auto_route/auto_route.dart';
import 'package:bean_go/core/navigation/app_router.dart';
import 'package:bean_go/core/utils/defaults.dart';
import 'package:bean_go/core/utils/extensions.dart';
import 'package:bean_go/core/widgets/bean_go_button.dart';
import 'package:bean_go/features/auth/widgets/auth_social_button_row.dart';
import 'package:bean_go/features/auth/widgets/auth_text_info.dart';
import 'package:bean_go/gen/assets.gen.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Assets.images.logo.image(),
             AppDefaults.gap32,
              const AuthTextInfo(),
              AppDefaults.gap32,
              BeanGoButton(
                text: context.s.sign_in,
                onPressed: () {
                  context.router.push(
                    const LoginRoute(),
                  );
                },
              ),
              AppDefaults.gap16,
              BeanGoButton(
                text: context.s.create_an_account,
                onPressed: () {
                  context.router.push(
                    const RegisterRoute(),
                  );
                },
              ),
              AppDefaults.gap32,
              AuthSocialButtonRow(),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
