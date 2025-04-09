import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
class CustomSnackbar {
  final String title;
  final String message;
  final ContentType contentType;

  CustomSnackbar._({
    required this.title,
    required this.message,
    required this.contentType,
  });

  factory CustomSnackbar.success({
    required String title,
    required String message,
  }) {
    return CustomSnackbar._(
      title: title,
      message: message,
      contentType: ContentType.success,
    );
  }

  factory CustomSnackbar.error({
    required String title,
    required String message,
  }) {
    return CustomSnackbar._(
      title: title,
      message: message,
      contentType: ContentType.failure,
    );
  }
  void show(BuildContext context) {
    final snackBar = SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: title,
        message: message,
        contentType: contentType,
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}