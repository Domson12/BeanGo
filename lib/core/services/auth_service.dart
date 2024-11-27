import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

import 'domain/user_roles.dart';

class AuthService {
  factory AuthService() {
    return _instance;
  }

  AuthService._();

  static final AuthService _instance = AuthService._();

  bool isAuthenticated = false;

  User? currentUser;
  UserRoles? userRole;

  bool isLoggedByEmail() {
    return currentUser?.providerData.first.providerId == 'password';
  }
}
