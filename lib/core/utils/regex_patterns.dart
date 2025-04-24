//regex patterns class
class RegexPatterns {
  static const String emailPattern =
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';

  // Phone number regex pattern
  static const String phoneNumberPattern =
      r'^\+?[1-9]\d{1,14}$'; // E.164 format

  // URL regex pattern
  static const String urlPattern =
      r'^(https?:\/\/)?([a-zA-Z0-9.-]+)(:[0-9]{1,5})?(\/.*)?$';

  // Password regex pattern (at least 8 characters, one uppercase, one lowercase, one digit)
  static const String passwordPattern =
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[A-Za-z\d@$!%*?&]{8,}$';
}