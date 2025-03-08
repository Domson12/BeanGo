import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bean_go/core/navigation/app_router.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Assets.images.coffeeCup.image(),
            const AuthTextInfo(),
            const SizedBox(height: 54),
            BeanGoButton(
              text: context.s.sign_in,
              onPressed: () {
                context.router.push(
                  const LoginRoute(),
                );
              },
            ),
            const SizedBox(height: 16),
            BeanGoButton(
              text: context.s.create_an_account,
              onPressed: () {
                //TODO: Implement create an account
              },
            ),
            const SizedBox(height: 44),
            AuthSocialButtonRow(),
          ],
        ),
      ),
    );
  }
}
