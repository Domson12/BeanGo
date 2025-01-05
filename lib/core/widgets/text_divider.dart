import 'package:flutter/material.dart';

import '../theme/app_theme.dart';
import '../utils/extensions.dart';

class TextDivider extends StatelessWidget {
  const TextDivider({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            height: 1,
            color: AppTheme.colors.outline,
          ),
        ),
        const SizedBox(width: 16),
        Text(
          text.toUpperCase(),
          style: context.textTheme.labelSmall?.copyWith(
            color: AppTheme.colors.primaryText,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Divider(
            height: 1,
            color: AppTheme.colors.outline,
          ),
        ),
      ],
    );
  }
}
