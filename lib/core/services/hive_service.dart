import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import '../../features/dashboard/domain/settings_model.dart';
import '../../run_app.dart';

enum HiveBoxName { settings }

class HiveService {
  static init() async {
    logger.logDebug('Hive Init');
    final directory = await getApplicationDocumentsDirectory();
    Hive
      ..init(directory.path)
      ..registerAdapter(SettingsModelAdapter())
      ..registerAdapter(ThemeTypeAdapter());
  }
}
