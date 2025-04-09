import 'package:bean_go/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../gen/assets.gen.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    required this.onTap,
    super.key,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        elevation: 4,
        backgroundColor: context.colors.white,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            Assets.svg.googleIcon,
            height: 24,
          ),
         Spacer(),
          Text(
            context.s.continue_with_google,
            style: context.textTheme.bodyMedium,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
