import 'package:bean_go/core/utils/extensions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

String getFirebaseAuthErrorMessage(BuildContext context, FirebaseAuthException e) {
  switch (e.code) {
    case 'invalid-email':
      return context.s.invalid_email;
    case 'user-disabled':
      return context.s.user_disabled;
    case 'user-not-found':
      return context.s.user_not_found;
    case 'wrong-password':
      return context.s.wrong_password;
    case 'email-already-in-use':
      return context.s.email_already_in_use;
    case 'operation-not-allowed':
      return context.s.operation_not_allowed;
    case 'weak-password':
      return context.s.weak_password;
    case 'too-many-requests':
      return context.s.too_many_requests;
    case 'network-request-failed':
      return context.s.network_error;
    default:
      return context.s.unknown_error;
  }
}
