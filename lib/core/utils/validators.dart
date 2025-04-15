import 'package:bean_go/core/utils/regex_patterns.dart';

import '../../gen/l10n.dart';

class Validators {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return S.current.email_empty;
    }

    final emailRegex = RegExp(RegexPatterns.emailPattern);
    if (!emailRegex.hasMatch(value)) {
      return S.current.incorrect_email;
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return S.current.pasword_cannot_be_empty;
    }

    if (value.length < 6) {
      return S.current.password_too_short;
    }

    if (value.length > 20) {
      return S.current.password_too_long;
    }

    final passwordRegex = RegExp(RegexPatterns.passwordPattern);

    if (!passwordRegex.hasMatch(value)) {
      return S.current.password_requirements;
    }

    return null;
  }

  static String? validatePasswordConfirmation(String? password, String? confirmPassword) {
    if (confirmPassword == null || confirmPassword.isEmpty) {
      return S.current.password_confirmation_empty;
    }

    if (password != confirmPassword) {
      return S.current.passwords_do_not_match;
    }

    return null;
  }
}
