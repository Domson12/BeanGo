import 'package:bean_go/core/widgets/bean_go_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../gen/assets.gen.dart';

class AppleButton extends StatelessWidget {
  const AppleButton({
    required this.onTap,
    super.key,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return BeanGoButton(
      variant: CustomElevatedVariant.primary,
      text: 'Continue with Apple',
      leading: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: SvgPicture.asset(
          Assets.svg.appleIcon,
          height: 24,
        ),
      ),
      onPressed: onTap,
    );
  }
}
