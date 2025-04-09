import 'package:bean_go/core/utils/extensions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

String getFirebaseAuthErrorMessage(BuildContext context, FirebaseAuthException e) {
  switch (e.code) {
    case 'invalid-email':
      return context.s.invalidEmail;
    case 'user-disabled':
      return context.s.userDisabled;
    case 'user-not-found':
      return context.s.userNotFound;
    case 'wrong-password':
      return context.s.wrongPassword;
    case 'email-already-in-use':
      return context.s.emailAlreadyInUse;
    case 'operation-not-allowed':
      return context.s.operationNotAllowed;
    case 'weak-password':
      return context.s.weakPassword;
    case 'too-many-requests':
      return context.s.tooManyRequests;
    case 'network-request-failed':
      return context.s.networkError;
    default:
      return context.s.unknownError;
  }
}
