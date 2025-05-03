import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsService {
  final SharedPreferences prefs;

  SharedPrefsService(this.prefs);

  bool get onboardingComplete => prefs.getBool('onboarding_complete') ?? false;

  Future<void> setOnboardingComplete() async {
    await prefs.setBool('onboarding_complete', true);
  }
}
