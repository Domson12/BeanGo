import 'package:firebase_auth/firebase_auth.dart';

import '../../../../../core/services/domain/result.dart';
import '../models/register_model.dart';

abstract class RegisterRepository {
  Future<Result<User>> registerWithEmail(RegisterModel model);
  Future<Result<User>> registerWithGoogle();
  Future<Result<User>> registerWithApple();
}