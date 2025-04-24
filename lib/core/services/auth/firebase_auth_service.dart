import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import '../../../features/auth/login/domain/models/login_model.dart';
import '../../../features/auth/register/domain/models/register_model.dart';
import '../domain/api_errors.dart';
import '../domain/result.dart';
import 'auth_service.dart';

class FirebaseAuthService implements AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<Result<User>> loginByEmail({required LoginModel model}) async {
    try {
      final credentials = await _firebaseAuth.signInWithEmailAndPassword(
        email: model.email,
        password: model.password,
      );
      return Result.success(credentials.user!);
    } on FirebaseAuthException catch (e) {
      return Result.failure(APIErrors.values.errorByName(e.code));
    } catch (_) {
      return Result.failure(APIErrors.generic);
    }
  }

  @override
  Future<Result<User>> registerByEmail({
    required RegisterModel model,
    required String password,
  }) async {
    try {
      final credentials = await _firebaseAuth.createUserWithEmailAndPassword(
        email: model.email,
        password: password,
      );

      await credentials.user?.updateDisplayName('${model.name} ${model.name}');
      return Result.success(credentials.user!);
    } on FirebaseAuthException catch (e) {
      return Result.failure(APIErrors.values.errorByName(e.code));
    } catch (_) {
      return Result.failure(APIErrors.generic);
    }
  }

  @override
  Future<Result<User>> loginWithGoogle() async {
    try {
      final googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) return Result.failure(APIErrors.canceled);

      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final userCreds = await _firebaseAuth.signInWithCredential(credential);
      return Result.success(userCreds.user!);
    } catch (_) {
      return Result.failure(APIErrors.generic);
    }
  }

  @override
  Future<Result<User>> loginWithApple() async {
    try {
      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      final oauthCredential = OAuthProvider("apple.com").credential(
        idToken: appleCredential.identityToken,
        accessToken: appleCredential.authorizationCode,
      );

      final userCreds = await _firebaseAuth.signInWithCredential(
        oauthCredential,
      );
      return Result.success(userCreds.user!);
    } catch (_) {
      return Result.failure(APIErrors.generic);
    }
  }

  @override
  Future<void> logout() async {
    await _firebaseAuth.signOut();
    await GoogleSignIn().signOut();
  }
}
