import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../services/scaffold_messenger/scaffold_messenger_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../storage/shared_prefs_service.dart';

final scaffoldMessengerProvider = Provider((ref) => ScaffoldMessengerService());

final authStateProvider = StreamProvider<User?>(
      (ref) => FirebaseAuth.instance.authStateChanges(),
);


// Raw SharedPreferences instance
final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError('Must be overridden in main');
});

// Wrapped service
final sharedPrefsServiceProvider = Provider<SharedPrefsService>((ref) {
  final prefs = ref.read(sharedPreferencesProvider);
  return SharedPrefsService(prefs);
});