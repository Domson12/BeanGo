import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../gen/l10n.dart';

final appLocaleStateNotifier =
ChangeNotifierProvider((ref) => AppLocaleState());

class AppLocaleState extends ChangeNotifier {
  Locale? locale;

  void setLocale({required String? code, bool initial = false}) {
    final locale = code != null ? Locale.fromSubtags(languageCode: code) : null;
    if (locale != null && S.delegate.isSupported(locale)) {
      this.locale = locale;
      if (initial) {
        return;
      }
      // notifyListeners();
    }
  }
}
