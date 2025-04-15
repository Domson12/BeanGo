import 'package:equatable/equatable.dart';

import '../../../gen/l10n.dart';

enum APIErrors {
  userNotFound,
  wrongPassword,
  generic,
  invalidLoginCredentials,
  invalidCredential,
  emailAlreadyInUse,
  collectionNotFound,
  expiredActionCode,
  invalidActionCode,
  blockingCloudFunctionReturnedError,
  requiresRecentLogin,
  userDisabled,
  userDisabledAndroid,
  weakPassword,
  internalError,
  locationDisabled,
  canceled,
  appleCanceled,
  tooManyRequests,
}

extension APIErrorsExtension on APIErrors {
  String? get rawName {
    switch (this) {
      case APIErrors.userNotFound:
        return 'user-not-found';
      case APIErrors.wrongPassword:
        return 'wrong-password';
      case APIErrors.invalidLoginCredentials:
        return 'INVALID_LOGIN_CREDENTIALS';
      case APIErrors.invalidCredential:
        return 'invalid-credential';
      case APIErrors.blockingCloudFunctionReturnedError:
        return 'blocking-cloud-function-returned-error';
      case APIErrors.emailAlreadyInUse:
        return 'email-already-in-use';
      case APIErrors.collectionNotFound:
        return 'collection-not-found';
      case APIErrors.expiredActionCode:
        return 'expired-action-code';
      case APIErrors.invalidActionCode:
        return 'invalid-action-code';
      case APIErrors.userDisabled:
        return 'user-disabled';
      case APIErrors.userDisabledAndroid:
        return 'BLOCKING_FUNCTION_ERROR_RESPONSE';
      case APIErrors.weakPassword:
        return 'weak-password';
      case APIErrors.internalError:
        return 'internal-error';
      case APIErrors.canceled:
        return 'canceled';
      case APIErrors.appleCanceled:
        return 'AuthorizationErrorCode.canceled';
      case APIErrors.requiresRecentLogin:
        return 'requires-recent-login';
      case APIErrors.tooManyRequests:
        return 'too-many-requests';
      default:
        return 'generic';
    }
  }

  String get message {
    switch (this) {
      case APIErrors.userNotFound:
        return S.current.user_not_found;
      case APIErrors.wrongPassword:
        return S.current.wrong_password;
      case APIErrors.invalidLoginCredentials:
        return S.current.invalid_login_credentials;
      case APIErrors.invalidCredential:
        return S.current.invalid_credential;
      case APIErrors.blockingCloudFunctionReturnedError:
        return S.current.blocking_cloud_function_returned_error;
      case APIErrors.emailAlreadyInUse:
        return S.current.email_already_in_use;
      case APIErrors.expiredActionCode:
        return S.current.expired_action_code;
      case APIErrors.invalidActionCode:
        return S.current.invalid_action_code;
      case APIErrors.userDisabled:
        return S.current.user_disabled;
      case APIErrors.userDisabledAndroid:
        return S.current.user_disabled_android;
      case APIErrors.weakPassword:
        return S.current.weak_password;
      case APIErrors.internalError:
        return S.current.internal_error;
      case APIErrors.locationDisabled:
        return S.current.location_disabled;
      case APIErrors.canceled:
        return '';
      case APIErrors.appleCanceled:
        return '';
      case APIErrors.requiresRecentLogin:
        return '';
      case APIErrors.tooManyRequests:
        return S.current.too_many_requests;
      default:
        return S.current.error_generic;
    }
  }
}

extension GetErrorByName<T extends Enum> on Iterable<APIErrors> {
  APIErrors errorByName(String name) {
    for (final value in this) {
      if (value.rawName == name) return value;
    }

    return APIErrors.generic;
  }
}

sealed class ResultMessage with EquatableMixin {
  const ResultMessage({required this.description});

  final String description;

  @override
  List<Object?> get props => [description];
}

class NeutralMessage extends ResultMessage {
  const NeutralMessage({required super.description});
}

class SuccessMessage extends ResultMessage {
  const SuccessMessage({required super.description});
}

class ErrorMessage extends ResultMessage {
  const ErrorMessage({required super.description});
}
