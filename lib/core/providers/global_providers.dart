import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/scaffold_messenger/scaffold_messenger_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

final scaffoldMessengerProvider = Provider((ref) => ScaffoldMessengerService());

final authStateProvider = StreamProvider<User?>(
      (ref) => FirebaseAuth.instance.authStateChanges(),
);
