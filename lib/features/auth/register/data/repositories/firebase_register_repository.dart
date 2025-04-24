import 'package:bean_go/core/services/domain/result.dart';
import 'package:bean_go/features/auth/register/domain/models/register_model.dart';
import 'package:bean_go/features/auth/register/domain/repositories/register_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../../core/services/domain/api_errors.dart';

class FirebaseRegisterRepository implements RegisterRepository {
  final FirebaseAuth _auth;
  final GoogleSignIn _google;

  FirebaseRegisterRepository(this._auth, this._google);

  @override
  Future<Result<User>> registerWithApple() {
    // TODO: implement registerWithApple
    throw UnimplementedError();
  }

  @override
  Future<Result<User>> registerWithEmail(RegisterModel model) async {
    try {
      final cred = await _auth.createUserWithEmailAndPassword(
        email: model.email,
        password: model.password,
      );
      return Result.success(cred.user!);
    } on FirebaseAuthException catch (e) {
      return Result.failure(APIErrors.values.errorByName(e.code));
    } catch (_) {
      return Result.failure(APIErrors.generic);
    }
  }

  @override
  Future<Result<User>> registerWithGoogle() async {
    try {
      final googleUser = await _google.signIn();
      if (googleUser == null) return Result.failure(APIErrors.canceled);

      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      );
      final creds = await _auth.signInWithCredential(credential);
      return Result.success(creds.user!);
    } catch (_) {
      return Result.failure(APIErrors.generic);
    }
  }
}
