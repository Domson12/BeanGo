import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:bean_go/core/services/domain/api_errors.dart';
import 'package:flutter/material.dart';
import '../../gen/l10n.dart';
import '../services/domain/result.dart';

SnackBar resultSnackbar<T>({
  required Result<T> result,
  required String successMessage,
  String? fallbackErrorMessage,
  String? customSuccessTitle,
}) {
  late final ContentType contentType;
  late final String title;
  late final String message;

  if (result.success != null) {
    contentType = ContentType.success;
    title = customSuccessTitle ?? S.current.operation_success;
    message = successMessage;
  } else if (result.failure != null) {
    contentType = ContentType.failure;
    title = S.current.error;
    message = result.failure?.message ??
        fallbackErrorMessage ??
        S.current.error_generic;
  } else {
    contentType = ContentType.warning;
    title = S.current.error;
    message = S.current.error_generic;
  }

  return SnackBar(
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: title,
      message: message,
      contentType: contentType,
    ),
  );
}
