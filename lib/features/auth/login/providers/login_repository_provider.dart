import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../data/repositories/firebase_login_repository.dart';
import '../domain/repositories/login_repository.dart';


part 'login_repository_provider.g.dart';

@riverpod
LoginRepository loginRepository(LoginRepositoryRef ref) {
  return FirebaseLoginRepository(FirebaseAuth.instance, GoogleSignIn());
}
