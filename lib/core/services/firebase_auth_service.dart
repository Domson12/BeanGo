import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';

import '../../features/auth/login/domain/models/login_model.dart';
import '../../features/auth/register/domain/models/register_model.dart';
import 'domain/result.dart';

class FirebaseAuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  FutureOr<Result<User>> loginByEmail({required LoginModel model}) async {
    try {
      final credentials = await _firebaseAuth.signInWithEmailAndPassword(
        email: model.email,
        password: model.password,
      );

      return Result.success(model: credentials.user);
    } on FirebaseAuthException catch (e) {
      return Result.failure(error: e.code);
    }
  }

  FutureOr<Result<User>> registerByEmail({
    required RegisterModel model,
    required String password,
  }) async {
    try {
      final credentials = await _firebaseAuth.createUserWithEmailAndPassword(
        email: model.email,
        password: password,
      );

      await credentials.user?.updateDisplayName(
        '${model.name} ${model.name}',
      );

      return Result.success(model: credentials.user);
    } on FirebaseAuthException catch (e) {
      return Result.failure(error: e.code);
    }
  }
}