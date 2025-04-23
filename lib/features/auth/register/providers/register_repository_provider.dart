import 'package:bean_go/features/auth/register/data/repositories/firebase_register_repository.dart';
import 'package:bean_go/features/auth/register/domain/repositories/register_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';



part 'register_repository_provider.g.dart';

@riverpod
RegisterRepository registerRepository(RegisterRepositoryRef ref) {
  return FirebaseRegisterRepository(FirebaseAuth.instance, GoogleSignIn());
}
