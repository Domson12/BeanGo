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

  /// `Jasny`
  String get light {
    return Intl.message(
      'Jasny',
      name: 'light',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to our cozy coffee corner, where every cup is a delightful for you.`
  String get onboarding_desc_small {
    return Intl.message(
      'Welcome to our cozy coffee corner, where every cup is a delightful for you.',
      name: 'onboarding_desc_small',
      desc: '',
      args: [],
    );
  }

  /// `Fall in Love with Coffee in Blissful Delight!`
  String get onboarding_desc_big {
    return Intl.message(
      'Fall in Love with Coffee in Blissful Delight!',
      name: 'onboarding_desc_big',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get get_started {
    return Intl.message(
      'Get Started',
      name: 'get_started',
      desc: '',
      args: [],
    );
  }

  /// `Choose and customize your Drinks`
  String get onboarding_title1 {
    return Intl.message(
      'Choose and customize your Drinks',
      name: 'onboarding_title1',
      desc: '',
      args: [],
    );
  }

  /// `Customize your own drink exactly how you like it by adding any topping you like!!!`
  String get onboarding_subtitle1 {
    return Intl.message(
      'Customize your own drink exactly how you like it by adding any topping you like!!!',
      name: 'onboarding_subtitle1',
      desc: '',
      args: [],
    );
  }

  /// `Quickly and easly`
  String get onboarding_title2 {
    return Intl.message(
      'Quickly and easly',
      name: 'onboarding_title2',
      desc: '',
      args: [],
    );
  }

  /// `You can place your order quickly and easly without wasting time. You can also schedule orders via your smarthphone.`
  String get onboarding_subtitle2 {
    return Intl.message(
      'You can place your order quickly and easly without wasting time. You can also schedule orders via your smarthphone.',
      name: 'onboarding_subtitle2',
      desc: '',
      args: [],
    );
  }

  /// `Get and Redeem Voucher`
  String get onboarding_title3 {
    return Intl.message(
      'Get and Redeem Voucher',
      name: 'onboarding_title3',
      desc: '',
      args: [],
    );
  }

  /// `Exciting prizes await you! Redeem yours by collecting all the points after purchase in the app!`
  String get onboarding_subtitle3 {
    return Intl.message(
      'Exciting prizes await you! Redeem yours by collecting all the points after purchase in the app!',
      name: 'onboarding_subtitle3',
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
