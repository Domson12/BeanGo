import 'package:firebase_auth/firebase_auth.dart';

import '../../../features/auth/login/domain/models/login_model.dart';
import '../../../features/auth/register/domain/models/register_model.dart';
import '../domain/result.dart';

abstract class AuthService {
  Future<Result<User>> loginByEmail({required LoginModel model});
  Future<Result<User>> registerByEmail({
    required RegisterModel model,
    required String password,
  });
  Future<Result<User>> loginWithGoogle();
  Future<Result<User>> loginWithApple();
  Future<void> logout();
}
