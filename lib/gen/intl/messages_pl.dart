// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pl locale. All the
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
  String get localeName => 'pl';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "create_an_account":
            MessageLookupByLibrary.simpleMessage("Utwórz konto"),
        "email": MessageLookupByLibrary.simpleMessage("E-mail"),
        "emailAlreadyInUse": MessageLookupByLibrary.simpleMessage(
            "Ten adres e-mail jest już używany."),
        "get_started": MessageLookupByLibrary.simpleMessage("Zacznij"),
        "invalidEmail": MessageLookupByLibrary.simpleMessage(
            "Adres e-mail jest nieprawidłowy."),
        "light": MessageLookupByLibrary.simpleMessage("Jasny"),
        "login": MessageLookupByLibrary.simpleMessage("Zaloguj się"),
        "login_to_your_account":
            MessageLookupByLibrary.simpleMessage("Zaloguj się na swoje konto"),
        "networkError": MessageLookupByLibrary.simpleMessage(
            "Błąd sieci. Sprawdź swoje połączenie."),
        "onboarding_desc_big": MessageLookupByLibrary.simpleMessage(
            "Zakochaj się w kawie w błogiej rozkoszy!"),
        "onboarding_desc_small": MessageLookupByLibrary.simpleMessage(
            "Witamy w naszej przytulnej kawiarni, gdzie każda filiżanka to przyjemność dla Ciebie."),
        "operationNotAllowed": MessageLookupByLibrary.simpleMessage(
            "Ta operacja nie jest dozwolona."),
        "password": MessageLookupByLibrary.simpleMessage("Hasło"),
        "sign_in": MessageLookupByLibrary.simpleMessage("Zaloguj się"),
        "tooManyRequests": MessageLookupByLibrary.simpleMessage(
            "Zbyt wiele prób. Spróbuj ponownie później."),
        "unknownError": MessageLookupByLibrary.simpleMessage(
            "Wystąpił nieznany błąd. Spróbuj ponownie."),
        "userDisabled": MessageLookupByLibrary.simpleMessage(
            "To konto zostało zablokowane."),
        "userNotFound": MessageLookupByLibrary.simpleMessage(
            "Nie znaleziono użytkownika z tym adresem e-mail."),
        "weakPassword":
            MessageLookupByLibrary.simpleMessage("Hasło jest zbyt słabe."),
        "welcome_back":
            MessageLookupByLibrary.simpleMessage("Witamy ponownie!"),
        "wrongPassword": MessageLookupByLibrary.simpleMessage(
            "Nieprawidłowe hasło. Spróbuj ponownie.")
      };
}
