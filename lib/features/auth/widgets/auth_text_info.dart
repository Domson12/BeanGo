import 'package:bean_go/core/utils/extensions.dart';
import 'package:flutter/material.dart';

class AuthTextInfo extends StatelessWidget {
  const AuthTextInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Colors.brown[800],
            fontFamily: 'Poppins',
          ),
          children: [
            TextSpan(text: '${context.s.sign_in_with} '),
            TextSpan(
              text: '${context.s.google} ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: context.colors.primaryMain,
              ),
            ),
            TextSpan(text: '${context.s.or} '),
            TextSpan(
              text: context.s.facebook,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: context.colors.primaryMain,
              ),
            ),
            TextSpan(text: context.s.or_create_account),
          ],
        ),
      ),
    );
  }
}
