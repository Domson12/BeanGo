// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "create_an_account":
            MessageLookupByLibrary.simpleMessage("Create an account"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "emailAlreadyInUse": MessageLookupByLibrary.simpleMessage(
            "This email is already registered."),
        "get_started": MessageLookupByLibrary.simpleMessage("Get Started"),
        "invalidEmail": MessageLookupByLibrary.simpleMessage(
            "The email address is not valid."),
        "light": MessageLookupByLibrary.simpleMessage("Light"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "login_to_your_account":
            MessageLookupByLibrary.simpleMessage("Login to your account"),
        "networkError": MessageLookupByLibrary.simpleMessage(
            "Network error. Check your connection."),
        "onboarding_desc_big": MessageLookupByLibrary.simpleMessage(
            "Fall in Love with Coffee in Blissful Delight!"),
        "onboarding_desc_small": MessageLookupByLibrary.simpleMessage(
            "Welcome to our cozy coffee corner, where every cup is a delightful for you."),
        "operationNotAllowed": MessageLookupByLibrary.simpleMessage(
            "This operation is not allowed."),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "sign_in": MessageLookupByLibrary.simpleMessage("Sign in"),
        "tooManyRequests": MessageLookupByLibrary.simpleMessage(
            "Too many requests. Try again later."),
        "unknownError": MessageLookupByLibrary.simpleMessage(
            "An unknown error occurred. Please try again."),
        "userDisabled": MessageLookupByLibrary.simpleMessage(
            "This user has been disabled."),
        "userNotFound": MessageLookupByLibrary.simpleMessage(
            "No user found with this email."),
        "weakPassword":
            MessageLookupByLibrary.simpleMessage("The password is too weak."),
        "welcome_back": MessageLookupByLibrary.simpleMessage("Welcome Back!"),
        "wrongPassword": MessageLookupByLibrary.simpleMessage(
            "Incorrect password. Please try again.")
      };
}
