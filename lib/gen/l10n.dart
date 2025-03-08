// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Adres e-mail jest nieprawidłowy.`
  String get invalidEmail {
    return Intl.message(
      'Adres e-mail jest nieprawidłowy.',
      name: 'invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `To konto zostało zablokowane.`
  String get userDisabled {
    return Intl.message(
      'To konto zostało zablokowane.',
      name: 'userDisabled',
      desc: '',
      args: [],
    );
  }

  /// `Nie znaleziono użytkownika z tym adresem e-mail.`
  String get userNotFound {
    return Intl.message(
      'Nie znaleziono użytkownika z tym adresem e-mail.',
      name: 'userNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Nieprawidłowe hasło. Spróbuj ponownie.`
  String get wrongPassword {
    return Intl.message(
      'Nieprawidłowe hasło. Spróbuj ponownie.',
      name: 'wrongPassword',
      desc: '',
      args: [],
    );
  }

  /// `Ten adres e-mail jest już używany.`
  String get emailAlreadyInUse {
    return Intl.message(
      'Ten adres e-mail jest już używany.',
      name: 'emailAlreadyInUse',
      desc: '',
      args: [],
    );
  }

  /// `Ta operacja nie jest dozwolona.`
  String get operationNotAllowed {
    return Intl.message(
      'Ta operacja nie jest dozwolona.',
      name: 'operationNotAllowed',
      desc: '',
      args: [],
    );
  }

  /// `Hasło jest zbyt słabe.`
  String get weakPassword {
    return Intl.message(
      'Hasło jest zbyt słabe.',
      name: 'weakPassword',
      desc: '',
      args: [],
    );
  }

  /// `Zbyt wiele prób. Spróbuj ponownie później.`
  String get tooManyRequests {
    return Intl.message(
      'Zbyt wiele prób. Spróbuj ponownie później.',
      name: 'tooManyRequests',
      desc: '',
      args: [],
    );
  }

  /// `Błąd sieci. Sprawdź swoje połączenie.`
  String get networkError {
    return Intl.message(
      'Błąd sieci. Sprawdź swoje połączenie.',
      name: 'networkError',
      desc: '',
      args: [],
    );
  }

  /// `Wystąpił nieznany błąd. Spróbuj ponownie.`
  String get unknownError {
    return Intl.message(
      'Wystąpił nieznany błąd. Spróbuj ponownie.',
      name: 'unknownError',
      desc: '',
      args: [],
    );
  }

  /// `Jasny`
  String get light {
    return Intl.message(
      'Jasny',
      name: 'light',
      desc: '',
      args: [],
    );
  }

  /// `Witamy w naszej przytulnej kawiarni, gdzie każda filiżanka to przyjemność dla Ciebie.`
  String get onboarding_desc_small {
    return Intl.message(
      'Witamy w naszej przytulnej kawiarni, gdzie każda filiżanka to przyjemność dla Ciebie.',
      name: 'onboarding_desc_small',
      desc: '',
      args: [],
    );
  }

  /// `Zakochaj się w kawie w błogiej rozkoszy!`
  String get onboarding_desc_big {
    return Intl.message(
      'Zakochaj się w kawie w błogiej rozkoszy!',
      name: 'onboarding_desc_big',
      desc: '',
      args: [],
    );
  }

  /// `Zacznij`
  String get get_started {
    return Intl.message(
      'Zacznij',
      name: 'get_started',
      desc: '',
      args: [],
    );
  }

  /// `E-mail`
  String get email {
    return Intl.message(
      'E-mail',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Hasło`
  String get password {
    return Intl.message(
      'Hasło',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Zaloguj się`
  String get login {
    return Intl.message(
      'Zaloguj się',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Witamy ponownie!`
  String get welcome_back {
    return Intl.message(
      'Witamy ponownie!',
      name: 'welcome_back',
      desc: '',
      args: [],
    );
  }

  /// `Zaloguj się na swoje konto`
  String get login_to_your_account {
    return Intl.message(
      'Zaloguj się na swoje konto',
      name: 'login_to_your_account',
      desc: '',
      args: [],
    );
  }

  /// `Zaloguj się`
  String get sign_in {
    return Intl.message(
      'Zaloguj się',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Utwórz konto`
  String get create_an_account {
    return Intl.message(
      'Utwórz konto',
      name: 'create_an_account',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'pl'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
