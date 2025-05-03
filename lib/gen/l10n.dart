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

  /// `The email address is not valid.`
  String get invalid_email {
    return Intl.message(
      'The email address is not valid.',
      name: 'invalid_email',
      desc: '',
      args: [],
    );
  }

  /// `This operation is not allowed.`
  String get operation_not_allowed {
    return Intl.message(
      'This operation is not allowed.',
      name: 'operation_not_allowed',
      desc: '',
      args: [],
    );
  }

  /// `Network error. Check your connection.`
  String get network_error {
    return Intl.message(
      'Network error. Check your connection.',
      name: 'network_error',
      desc: '',
      args: [],
    );
  }

  /// `An unknown error occurred. Please try again.`
  String get unknown_error {
    return Intl.message(
      'An unknown error occurred. Please try again.',
      name: 'unknown_error',
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

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
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

  /// `Create an account`
  String get create_an_account {
    return Intl.message(
      'Create an account',
      name: 'create_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with`
  String get sign_in_with {
    return Intl.message(
      'Sign in with',
      name: 'sign_in_with',
      desc: '',
      args: [],
    );
  }

  /// `Google`
  String get google {
    return Intl.message(
      'Google',
      name: 'google',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get or {
    return Intl.message(
      'or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Facebook`
  String get facebook {
    return Intl.message(
      'Facebook',
      name: 'facebook',
      desc: '',
      args: [],
    );
  }

  /// `, or create a new account today!`
  String get or_create_account {
    return Intl.message(
      ', or create a new account today!',
      name: 'or_create_account',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Google`
  String get continue_with_google {
    return Intl.message(
      'Continue with Google',
      name: 'continue_with_google',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Apple`
  String get continue_with_apple {
    return Intl.message(
      'Continue with Apple',
      name: 'continue_with_apple',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get dont_have_an_acount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'dont_have_an_acount',
      desc: '',
      args: [],
    );
  }

  /// `Have an account?`
  String get have_an_account {
    return Intl.message(
      'Have an account?',
      name: 'have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirm_password {
    return Intl.message(
      'Confirm Password',
      name: 'confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `By tapping "Register" you agree to`
  String get by_taping_register {
    return Intl.message(
      'By tapping "Register" you agree to',
      name: 'by_taping_register',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Use`
  String get terms_of_use {
    return Intl.message(
      'Terms of Use',
      name: 'terms_of_use',
      desc: '',
      args: [],
    );
  }

  /// `and`
  String get and {
    return Intl.message(
      'and',
      name: 'and',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacy_policy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `User not found. Please check your email and try again.`
  String get user_not_found {
    return Intl.message(
      'User not found. Please check your email and try again.',
      name: 'user_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect password. Please try again.`
  String get wrong_password {
    return Intl.message(
      'Incorrect password. Please try again.',
      name: 'wrong_password',
      desc: '',
      args: [],
    );
  }

  /// `Invalid login credentials. Please try again.`
  String get invalid_login_credentials {
    return Intl.message(
      'Invalid login credentials. Please try again.',
      name: 'invalid_login_credentials',
      desc: '',
      args: [],
    );
  }

  /// `Invalid credentials. Please try again.`
  String get invalid_credential {
    return Intl.message(
      'Invalid credentials. Please try again.',
      name: 'invalid_credential',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred while processing your request. Please try again later.`
  String get blocking_cloud_function_returned_error {
    return Intl.message(
      'An error occurred while processing your request. Please try again later.',
      name: 'blocking_cloud_function_returned_error',
      desc: '',
      args: [],
    );
  }

  /// `Email already in use. Please try another one.`
  String get email_already_in_use {
    return Intl.message(
      'Email already in use. Please try another one.',
      name: 'email_already_in_use',
      desc: '',
      args: [],
    );
  }

  /// `Expired action code. Please try again.`
  String get expired_action_code {
    return Intl.message(
      'Expired action code. Please try again.',
      name: 'expired_action_code',
      desc: '',
      args: [],
    );
  }

  /// `Invalid action code. Please try again.`
  String get invalid_action_code {
    return Intl.message(
      'Invalid action code. Please try again.',
      name: 'invalid_action_code',
      desc: '',
      args: [],
    );
  }

  /// `User is disabled. Please contact support.`
  String get user_disabled {
    return Intl.message(
      'User is disabled. Please contact support.',
      name: 'user_disabled',
      desc: '',
      args: [],
    );
  }

  /// `User is disabled. Please contact support.`
  String get user_disabled_android {
    return Intl.message(
      'User is disabled. Please contact support.',
      name: 'user_disabled_android',
      desc: '',
      args: [],
    );
  }

  /// `The password is too weak. Please choose a stronger password.`
  String get weak_password {
    return Intl.message(
      'The password is too weak. Please choose a stronger password.',
      name: 'weak_password',
      desc: '',
      args: [],
    );
  }

  /// `An internal error occurred. Please try again later.`
  String get internal_error {
    return Intl.message(
      'An internal error occurred. Please try again later.',
      name: 'internal_error',
      desc: '',
      args: [],
    );
  }

  /// `Location services are disabled. Please enable them in settings.`
  String get location_disabled {
    return Intl.message(
      'Location services are disabled. Please enable them in settings.',
      name: 'location_disabled',
      desc: '',
      args: [],
    );
  }

  /// `Too many requests. Please try again later.`
  String get too_many_requests {
    return Intl.message(
      'Too many requests. Please try again later.',
      name: 'too_many_requests',
      desc: '',
      args: [],
    );
  }

  /// `Unknown error occurred.`
  String get error_generic {
    return Intl.message(
      'Unknown error occurred.',
      name: 'error_generic',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Operacja wykonana pomyślnie!`
  String get operation_success {
    return Intl.message(
      'Operacja wykonana pomyślnie!',
      name: 'operation_success',
      desc: '',
      args: [],
    );
  }

  /// `Email nie może być pusty`
  String get email_empty {
    return Intl.message(
      'Email nie może być pusty',
      name: 'email_empty',
      desc: '',
      args: [],
    );
  }

  /// `Wprowadź poprawny adres email`
  String get incorrect_email {
    return Intl.message(
      'Wprowadź poprawny adres email',
      name: 'incorrect_email',
      desc: '',
      args: [],
    );
  }

  /// `Pasword cannot be empty`
  String get pasword_cannot_be_empty {
    return Intl.message(
      'Pasword cannot be empty',
      name: 'pasword_cannot_be_empty',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 6 characters long`
  String get password_too_short {
    return Intl.message(
      'Password must be at least 6 characters long',
      name: 'password_too_short',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at most 20 characters long`
  String get password_too_long {
    return Intl.message(
      'Password must be at most 20 characters long',
      name: 'password_too_long',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least one uppercase letter, one lowercase letter, one digit, and one special character`
  String get password_requirements {
    return Intl.message(
      'Password must contain at least one uppercase letter, one lowercase letter, one digit, and one special character',
      name: 'password_requirements',
      desc: '',
      args: [],
    );
  }

  /// `Password confirmation cannot be empty`
  String get password_confirmation_empty {
    return Intl.message(
      'Password confirmation cannot be empty',
      name: 'password_confirmation_empty',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get passwords_do_not_match {
    return Intl.message(
      'Passwords do not match',
      name: 'passwords_do_not_match',
      desc: '',
      args: [],
    );
  }

  /// `Successfully logged in`
  String get success_login_message {
    return Intl.message(
      'Successfully logged in',
      name: 'success_login_message',
      desc: '',
      args: [],
    );
  }

  /// `Registration successful`
  String get registration_successful {
    return Intl.message(
      'Registration successful',
      name: 'registration_successful',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get history {
    return Intl.message(
      'History',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `What would you like to drink today?`
  String get searchbar_hint {
    return Intl.message(
      'What would you like to drink today?',
      name: 'searchbar_hint',
      desc: '',
      args: [],
    );
  }

  /// `Coffee`
  String get coffee {
    return Intl.message(
      'Coffee',
      name: 'coffee',
      desc: '',
      args: [],
    );
  }

  /// `Non Coffee`
  String get non_coffee {
    return Intl.message(
      'Non Coffee',
      name: 'non_coffee',
      desc: '',
      args: [],
    );
  }

  /// `Pastry`
  String get pastry {
    return Intl.message(
      'Pastry',
      name: 'pastry',
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
