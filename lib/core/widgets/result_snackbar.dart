import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:bean_go/core/utils/result_extensions.dart';
import 'package:flutter/material.dart';

import '../../gen/l10n.dart';
import '../services/domain/result.dart';

SnackBar? resultSnackbar<T>({
  required Result<T> result,
  required String successMessage,
  String? fallbackErrorMessage,
  String? customSuccessTitle,
}) {

  final message = result.toMessage(
    successMessage: successMessage,
    fallbackErrorMessage: fallbackErrorMessage,
    customSuccessTitle: customSuccessTitle,
  );

  if (message == null) {
    return null;
  }

  final type = message.runtimeType.toString();

  late final ContentType contentType;
  late final String title;

  if (type.contains('SuccessMessage')) {
    contentType = ContentType.success;
    title = customSuccessTitle ?? S.current.operation_success;
  } else if (type.contains('ErrorMessage')) {
    contentType = ContentType.failure;
    title = S.current.error;
  } else {
    contentType = ContentType.warning;
    title = S.current.unknown_error;
  }

  return SnackBar(
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: title,
      message: message.description,
      contentType: contentType,
    ),
  );
}
