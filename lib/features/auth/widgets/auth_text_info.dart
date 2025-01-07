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
            color: Colors.brown[800], // Coffee-themed color
            fontFamily: 'Roboto', // Adjust to match your app's font style
          ),
          children: [
            TextSpan(
              text: "Welcome to ",
              style: TextStyle(color: Colors.brown[600]),
            ),
            TextSpan(
              text: "BeanGo\n",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: context.colors.primaryDark,
              ),
            ),
            TextSpan(
              text: "Get your coffee on the go!\n\n",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 18,
                color: context.colors.primaryDark,
              ),
            ),
            TextSpan(
              text: "Sign in with ",
            ),
            TextSpan(
              text: "Google",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: context.colors.primaryDark,
              ),
            ),
            TextSpan(
              text: " or ",
            ),
            TextSpan(
              text: "Facebook",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: context.colors.primaryDark,
              ),
            ),
            TextSpan(
              text: ", or create a new account today!",
            ),
          ],
        ),
      ),
    );
  }
}
