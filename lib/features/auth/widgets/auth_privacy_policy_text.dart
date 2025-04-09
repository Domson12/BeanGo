import 'package:bean_go/core/utils/extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AuthPrivacyPolicyText extends StatelessWidget {
  const AuthPrivacyPolicyText({
    super.key,
    required this.onTermsTap,
    required this.onPrivacyTap,
  });

  final VoidCallback onTermsTap;
  final VoidCallback onPrivacyTap;

  @override
  Widget build(BuildContext context) {
    final defaultStyle = context.textTheme.bodyMedium;
    final linkStyle = defaultStyle?.copyWith(
      color: Colors.blue,
      fontWeight: FontWeight.bold,
    );

    return Text.rich(
      TextSpan(
        text: context.s.by_taping_register,
        style: defaultStyle,
        children: [
          TextSpan(
            text: ' ${context.s.terms_of_use} ',
            style: linkStyle,
            recognizer: TapGestureRecognizer()..onTap = onTermsTap,
          ),
          TextSpan(text: context.s.and),
          TextSpan(
            text: ' ${context.s.privacy_policy} ',
            style: linkStyle,
            recognizer: TapGestureRecognizer()..onTap = onPrivacyTap,
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
