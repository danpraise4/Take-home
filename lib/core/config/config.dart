import 'package:fetch/core/config/config.model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  late AppConfigModel keys;

  static final AppConfig instance = _internal;
  static final AppConfig _internal = AppConfig._();

  AppConfig._();
  // init and do check
  init() async {
    await dotenv.load(fileName: 'assets/keys/.env');
  }

  AppConfigModel get config {
    keys = AppConfigModel.fromMap(dotenv.env);
    return keys;
  }
}
