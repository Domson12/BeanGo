import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/widgets/apple_button.dart';
import '../../../core/widgets/google_button.dart';
import '../../../core/widgets/text_divider.dart';

class AuthSocialButtonRow extends ConsumerWidget {
  const AuthSocialButtonRow({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextDivider(text: 'or'),
        const SizedBox(height: 16),
        if (Platform.isIOS) ...[
          AppleButton(
            onTap: () {
              //TODO: Implement Apple login
            },
          ),
          const SizedBox(height: 16),
        ],
        GoogleButton(
          onTap: () {
            //TODO: Implement Google login
          },
        ),
      ],
    );
  }
}
