import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/scaffold_messenger/scaffold_messenger_service.dart';

final scaffoldMessengerProvider = Provider((ref) => ScaffoldMessengerService());
