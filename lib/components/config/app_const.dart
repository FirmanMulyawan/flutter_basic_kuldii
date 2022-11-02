import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConst {
  static String appUrl = "${dotenv.env['APP_URL']!}/api/";
  static String appUrlFirebase = dotenv.env['APP_FIREBASE_URL']!;
  static String appUrlFirebaseAuth = dotenv.env['APP_FIREBASE_AUTH']!;
}
