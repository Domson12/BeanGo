import 'package:auto_route/auto_route.dart';
import 'package:bean_go/core/navigation/app_router.dart';
import 'package:bean_go/features/auth/register/widgets/register_form.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/defaults.dart';
import '../../../../gen/assets.gen.dart';
import '../../widgets/auth_login_register_text.dart';

@RoutePage()
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
                        const RegisterForm(),
                        const Spacer(),
                        AuthLoginRegisterText(
                          isLogin: false,
                          onTap: () {
                            context.router.navigate(
                              LoginRoute(),
                            );
                          },
                        ),
                        AppDefaults.gap60,
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
