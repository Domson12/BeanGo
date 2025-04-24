import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../../core/services/domain/api_errors.dart';
import '../../../../../core/services/domain/result.dart';
import '../../domain/models/login_model.dart';
import '../../domain/repositories/login_repository.dart';

class FirebaseLoginRepository implements LoginRepository {
  final FirebaseAuth _auth;
  final GoogleSignIn _google;

  FirebaseLoginRepository(this._auth, this._google);

  @override
  Future<Result<User>> loginWithEmail(LoginModel model) async {
    try {
      final cred = await _auth.signInWithEmailAndPassword(
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
  Future<Result<User>> loginWithGoogle() async {
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

  @override
  Future<Result<User>> loginWithApple() {
    // TODO: implement loginWithApple
    throw UnimplementedError();
  }
}
