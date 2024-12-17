import '../../../gen/l10n.dart';

enum ScreenType {
onboarding,
}

extension ScreenTypeExtension on ScreenType {
  String get label {
    switch (this) {
      default:
        return '';
    }
  }
}