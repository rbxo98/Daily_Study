import 'package:flutter_dotenv/flutter_dotenv.dart';
class UrlPath{
  static final url = dotenv.get("URL");
}
class AppPath {
  static const envPath = 'lib/app/config/.env';
}