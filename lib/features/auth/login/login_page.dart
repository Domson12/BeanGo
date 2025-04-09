import "package:auto_route/annotations.dart";
import "package:bean_go/core/utils/defaults.dart";
import "package:bean_go/core/utils/extensions.dart";
import "package:bean_go/features/auth/login/widgets/login_form.dart";
import "package:bean_go/features/auth/widgets/auth_login_register_text.dart";
import "package:flutter/material.dart";

import "../../../gen/assets.gen.dart";

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Padding(
                    padding: AppDefaults.paddingHorizontal16,
                    child: Column(
                      children: [
                        AppDefaults.gap32,
                        Assets.images.logo.image(),
                        AppDefaults.gap32,
                        const LoginForm(),
                        const Spacer(),
                        AuthLoginRegisterText(
                          isLogin: true,
                          onTap: () {},
                        ),
                        AppDefaults.gap16,
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
