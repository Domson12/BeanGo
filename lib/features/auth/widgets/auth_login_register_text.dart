import 'package:bean_go/core/utils/extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AuthLoginRegisterText extends StatelessWidget {
  const AuthLoginRegisterText({
    super.key,
    required this.isLogin,
    required this.onTap,
  });

  final bool isLogin;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.bodyMedium;
    final accentStyle = style?.copyWith(
      color: Theme.of(context).colorScheme.primary,
      fontWeight: FontWeight.bold,
    );

    return Text.rich(
      TextSpan(
        text: isLogin
            ? '${context.s.dont_have_an_acount} '
            : '${context.s.have_an_account} ',
        style: style,
        children: [
          TextSpan(
            text: isLogin ? context.s.register : context.s.login,
            style: accentStyle,
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
