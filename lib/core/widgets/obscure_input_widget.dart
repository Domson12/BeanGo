import 'package:flutter/material.dart';

import '../utils/extensions.dart';

class ObscureInputWidget extends StatelessWidget {
  const ObscureInputWidget({
    required this.obscureTextState,
    super.key,
  });

  final ValueNotifier<bool> obscureTextState;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        obscureTextState.value ? Icons.visibility : Icons.visibility_off,
        color: context.colors.primaryMain,
        size: 24,
      ),
      onPressed: () {
        obscureTextState.value = !obscureTextState.value;
      },
    );
  }
}
