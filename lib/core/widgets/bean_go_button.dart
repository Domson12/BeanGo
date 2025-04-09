import 'package:flutter/material.dart';

import '../utils/extensions.dart';

class BeanGoButton extends StatelessWidget {
  const BeanGoButton({
    required this.text,
    this.leading,
    this.onPressed,
    this.isLoading = false,
    this.fillWidth = true,
    this.variant = CustomElevatedVariant.primary,
    this.leadingPosition = LeadingPosition.start,
    this.compact = false,
    this.zeroPadding = false,
    super.key,
  });

  final String text;
  final Widget? leading;
  final VoidCallback? onPressed;
  final bool isLoading;
  final bool fillWidth;
  final CustomElevatedVariant variant;
  final LeadingPosition leadingPosition;
  final bool compact;
  final bool zeroPadding;

  @override
  Widget build(BuildContext context) {
    final backgroundColor = switch (variant) {
      CustomElevatedVariant.primary => context.colors.primaryDark,
      CustomElevatedVariant.secondary => context.colors.secondaryBase,
      CustomElevatedVariant.subtle => context.colors.outline,
      // TODO: Handle this case.
      CustomElevatedVariant.accent => throw UnimplementedError(),
    };

    final foregroundColor = switch (variant) {
      CustomElevatedVariant.subtle => context.colors.white,
      CustomElevatedVariant.accent => context.colors.outline,
      _ => null,
    };

    return SizedBox(
      width: fillWidth ? double.maxFinite : null,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          padding: EdgeInsets.symmetric(
            vertical: zeroPadding
                ? 0
                : compact
                    ? 8
                    : 12,
            horizontal: 16,
          ),
          disabledBackgroundColor: backgroundColor.withValues(
            alpha: 0.4,
            red: 0,
            green: 0,
            blue: 0,
          ),
          disabledForegroundColor: foregroundColor?.withValues(
            alpha: 0.4,
            red: 0,
            green: 0,
            blue: 0,
          ),
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
        ),
        onPressed: isLoading ? null : onPressed,
        child: isLoading
            ? const CircularProgressIndicator()
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (leading != null) ...[
                    leading!,
                    if (leadingPosition == LeadingPosition.start)
                      const Spacer()
                    else
                      const SizedBox(width: 8),
                  ],
                  Text(text),
                  if (leading != null &&
                      leadingPosition == LeadingPosition.start) ...[
                    const Spacer(),
                    Opacity(
                      opacity: 0,
                      child: leading,
                    ),
                  ],
                ],
              ),
      ),
    );
  }
}

enum CustomElevatedVariant {
  primary,
  secondary,
  subtle,
  accent,
}

enum LeadingPosition {
  start,
  center,
}
