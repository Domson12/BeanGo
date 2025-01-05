import 'package:bean_go/features/auth/widgets/auth_social_button_row.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          const SizedBox(height: 24),
          AuthSocialButtonRow(),
        ],
      )
    );
  }
}
