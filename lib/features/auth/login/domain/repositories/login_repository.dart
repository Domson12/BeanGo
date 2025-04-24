import 'package:firebase_auth/firebase_auth.dart';
import '../../../../../core/services/domain/result.dart';
import '../models/login_model.dart';

abstract class LoginRepository {
  Future<Result<User>> loginWithEmail(LoginModel model);
  Future<Result<User>> loginWithGoogle();
  Future<Result<User>> loginWithApple();
}
