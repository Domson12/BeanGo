import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

abstract class Logger {
  const Logger();

  void logDebug(String message);

  void logError(String message);

  void logException(dynamic ex, [StackTrace stackTrace, String message]);

  void logWarning(String message);

  void logInfo(String message);

  void setUserProperty(String name, String value);
}

class CustomLogger extends Logger {
  static const String _tag = 'CustomLogger';

  @override
  void logDebug(String message) {
    if (kDebugMode) {
      print('$_tag: $message');
    }
  }

  @override
  void logError(String message) {
    if (kDebugMode) {
      debugPrint('[ERROR] [$_tag] $message');
    }
  }

  @override
  void logInfo(String message) {
    if (kDebugMode) {
      debugPrint('[$_tag] $message');
    }
  }

  @override
  void logWarning(String message) {
    if (kDebugMode) {
      debugPrint('[WARNING] [$_tag] $message');
    }
  }

  @override
  void logException(ex, [StackTrace? stackTrace, String? message]) {
    if (kDebugMode) {
      if (message != null) {
        debugPrint(message);
      }
      if (ex is Error) {
        debugPrint(ex.toString());
      } else if (ex is PlatformException) {
        debugPrint(ex.message);
      } else if (ex is Exception) {
        debugPrint(ex.toString());
      } else {
        debugPrint(ex?.toString());
      }
      if (stackTrace != null) {
        debugPrint(stackTrace.toString());
      }
    }
  }

  @override
  void setUserProperty(String name, String value) {}
}
