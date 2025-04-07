import 'package:bean_go/core/widgets/bean_go_button.dart';
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
    return BeanGoButton(
      text: 'Continue with Google',
      leading: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: SvgPicture.asset(
          Assets.svg.googleIcon,
          height: 24,
          colorFilter: const ColorFilter.mode(
            Colors.black,
            BlendMode.srcIn,
          ),
        ),
      ),
      onPressed: onTap,
    );
  }
}
